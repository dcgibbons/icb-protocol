//
//  PongPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/5/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "PongPacket.h"

@implementation PongPacket

- (id)init
{
    if (self = [super init])
    {
        packetType = PONG;
    }
    return self;
}

@end
