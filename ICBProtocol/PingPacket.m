//
//  PingPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/5/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "PingPacket.h"

@implementation PingPacket

- (id)init
{
    if (self = [super init])
    {
        packetType = PING;
    }
    return self;
}

@end
