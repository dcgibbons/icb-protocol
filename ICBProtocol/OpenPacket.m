//
//  OpenPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/5/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "OpenPacket.h"

@implementation OpenPacket

- (id)initWithText:(NSString *)text
{
    if (self = [super init])
    {
        packetType = OPEN;
        [fields addObject:text];
    }
    return self;
}

- (NSString *)nick
{
    NSString *nick = fields[0];
    return nick;
}

- (NSString *)text
{
    NSString *text = fields[1];
    return text;
}

@end
