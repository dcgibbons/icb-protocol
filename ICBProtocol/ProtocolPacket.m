//
//  ProtocolPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "ProtocolPacket.h"

@implementation ProtocolPacket

- (id)initWithData:(NSData *)bytes
{
    if (self = [super initWithData:bytes])
    {
        // NO-OP
    }
    return self;
}

- (int)protocolLevel
{
    NSString *protocolLevel = [fields objectAtIndex:0];
    return [protocolLevel intValue];
}

- (NSString *)serverName
{
    NSString *serverName = [fields objectAtIndex:1];
    return serverName;
}

- (NSString *)serverDescription
{
    NSString *serverDescription = [fields objectAtIndex:2];
    return serverDescription;
}

@end
