//
//  PersonalPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/5/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "PersonalPacket.h"

@implementation PersonalPacket

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
