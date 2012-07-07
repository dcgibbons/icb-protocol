//
//  ICBPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "ICBPacket.h"
#import "BeepPacket.h"
#import "CommandPacket.h"
#import "CommandOutputPacket.h"
#import "ErrorPacket.h"
#import "ExitPacket.h"
#import "LoginPacket.h"
#import "OpenPacket.h"
#import "PersonalPacket.h"
#import "PingPacket.h"
#import "PongPacket.h"
#import "ProtocolPacket.h"
#import "StatusPacket.h"

@implementation ICBPacket

+ (id)packetWithBuffer:(NSData *)data
{
    // TODO: check [data length] to make sure there's enough data here
    const void *bytes = [data bytes];
    char packetType = ((char *)bytes)[0];
    ICBPacket* packet = nil;
    switch (packetType) {
        case LOGIN:
            packet = [[LoginPacket alloc] initWithData:data];
            break;
        case OPEN:
            packet = [[OpenPacket alloc] initWithData:data];
            break;
        case PERSONAL:
            packet = [[PersonalPacket alloc] initWithData:data];
            break;
        case STATUS:
        case IMPORTANT:
            packet = [[StatusPacket alloc] initWithData:data];
            break;
        case ERROR:
            packet = [[ErrorPacket alloc] initWithData:data];
            break;
        case EXIT:
            packet = [[ExitPacket alloc] initWithData:data];
            break;
        case COMMAND:
            packet = [[CommandPacket alloc] initWithData:data];
            break;
        case COMMAND_OUT:
            packet = [[CommandOutputPacket alloc] initWithData:data];
            break;
        case PROTOCOL:
            packet = [[ProtocolPacket alloc] initWithData:data];
            break;
        case BEEP:
            packet = [[BeepPacket alloc] initWithData:data];
            break;
        case PING:
            packet = [[PingPacket alloc] initWithData:data];
            break;
        case PONG:
            packet = [[PongPacket alloc] initWithData:data];
            break;
        case NOOP:
            break;
            
    }
    
    return packet;
}

- (id)init
{
    if (self = [super init])
    {
        fields = [NSMutableArray arrayWithCapacity:10];
        packetType = INVALID;
    }
    return self;
}

- (id)initWithData:(NSData *)data
{
//    DLog(@"initWithData:data=\n%@\n", [data hexDump]);
    
    const void *bytes = [data bytes];
    const NSUInteger length = [data length];
    // TODO: validate length, etc.
    
    fields = [NSMutableArray arrayWithCapacity:10];
    packetType = ((char *)bytes)[0];
    
    NSUInteger i, fieldStart;
    for (i = 1, fieldStart = 1; i <= length; i++) {
//        DLog(@"i=%u fieldStart=%u length=%u\n", i, fieldStart, length);
        const char c = ((const char *)bytes)[i];
        if (c == '\000' || c == '\001') {
            NSUInteger l = i - fieldStart;
            NSString *s = [[NSString alloc]
                           initWithBytes:(void*)&bytes[fieldStart] length:l encoding:NSASCIIStringEncoding];
            
            [fields addObject:s];

//            DLog(@"ICBPacket: initWithData fieldStart=%u length=%u s=%@\n", 
//                 fieldStart, l, s);
//            
            fieldStart = i + 1;
        }
    }
//    DLog(@"LOOP DONE i=%u fieldStart=%u length=%u\n", i, fieldStart, length);
    if (fieldStart < length)
    {
        NSString *s = [[NSString alloc]
                       initWithBytesNoCopy:(void*)&bytes[fieldStart]
                       length:length-fieldStart encoding:NSASCIIStringEncoding freeWhenDone:FALSE];
        [fields addObject:s];
//        DLog(@"ICBPacket: initWithData added last field s=%@\n", s);
    }

    return self;
}

- (NSData *)data
{
    uint8_t buffer[MAX_PACKET_SIZE];
    buffer[0] = packetType;
    
    NSUInteger pos = 1;
    for (NSUInteger i = 0, n = [fields count]; i < n; i++)
    {
        NSString *field = [fields objectAtIndex:i];
        
        NSUInteger used = 0;
        const NSUInteger maxLength = (MAX_PACKET_SIZE - pos);
        BOOL success = [field getBytes:&buffer[pos]
                             maxLength:maxLength
                            usedLength:&used
                              encoding:NSASCIIStringEncoding
                               options:0
                                 range:NSMakeRange(0, [field length])
                        remainingRange:NULL];

//        DLog(@"data, success=%u field=[%u]=%@ fields=%u pos=%u max=%u used=%u", success, i, field, n, pos, maxLength, used);
        
        pos += used;

        // add a field separator if this isn't the last field
        if (i + 1 < n) 
        {
            buffer[pos++] = '\001';
        }
        
        NSAssert(pos <= MAX_PACKET_SIZE, @"packet buffer overflow");
    }

    buffer[pos] = '\000';

    NSData *data = [NSData dataWithBytes:buffer length:pos];
//    DLog(@"packet data=\n%@", [data hexDump]);
    return data;
}

- (NSString *)getFieldAtIndex:(NSUInteger)index
{
    NSString *field = nil;
    if (index < [fields count])
    {
        field = [fields objectAtIndex:index];
    }
    return field;
}

@end

