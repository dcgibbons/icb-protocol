//
//  BeepPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "BeepPacket.h"

@implementation BeepPacket

- (id)initWithData:(NSData *)bytes
{
    if (self = [super initWithData:bytes]) 
    {
        // NO-OP
    }
    return self;
}

- (NSString *)nick
{
    NSString *nick = fields[0];

    return nick;
}

@end
