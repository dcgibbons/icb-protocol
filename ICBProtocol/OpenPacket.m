//
//  OpenPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/5/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "OpenPacket.h"

@implementation OpenPacket

- (NSString *)nick
{
    NSString *nick = [fields objectAtIndex:0];
    DLog(@"OpenPacket: nick=%@", nick);
    return nick;
}

- (NSString *)text
{
    NSString *text = [fields objectAtIndex:1];
    DLog(@"OpenPacket: text=%@", text);
    return text;
}

@end
