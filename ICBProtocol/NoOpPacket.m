//
//  NoOpPacket.m
//  Blamph
//
//  Created by Chad Gibbons on 11/24/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "NoOpPacket.h"

@implementation NoOpPacket

- (id)init
{
    if (self = [super init])
    {
        packetType = NOOP;
    }
    return self;
}
@end
