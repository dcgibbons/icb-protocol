//
//  ICBPacket.h
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : uint8_t {
    INVALID = ' ',
    LOGIN = 'a',
    OPEN = 'b',
    PERSONAL = 'c',
    STATUS = 'd',
    ERROR = 'e',
    IMPORTANT = 'f',
    EXIT = 'g',
    COMMAND = 'h',
    COMMAND_OUT = 'i',
    PROTOCOL = 'j',
    BEEP = 'k',
    PING = 'l',
    PONG = 'm',
    NOOP = 'n'
} kPacketType;

@interface ICBPacket : NSObject
{
@protected
    kPacketType packetType;
    NSMutableArray *fields;
}

+ (id)packetWithBuffer:(NSData *)data;

- (id)init;
- (id)initWithData:(NSData *)data;
- (NSData *)data;
- (NSString *)getFieldAtIndex:(NSUInteger)index;

@end
