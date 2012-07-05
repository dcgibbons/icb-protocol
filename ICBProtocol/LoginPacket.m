//
//  LoginPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "LoginPacket.h"

@implementation LoginPacket

- (id)initWithData:(NSData *)bytes
{
    if (self = [super initWithData:bytes]) 
    {
        // NO-OP
    }
    return self;
}

- (id)initWithUserDetails:(NSString *)userId nick:(NSString*)nick group:(NSString *)group command:(NSString *)command
                 password:(NSString *)password
{
    if (self = [super init]) {
        packetType = LOGIN;
        [fields replaceObjectAtIndex:0 withObject:userId];
        [fields replaceObjectAtIndex:1 withObject:nick];
        [fields replaceObjectAtIndex:2 withObject:group];
        [fields replaceObjectAtIndex:3 withObject:command];
        [fields replaceObjectAtIndex:4 withObject:password];
    }
    return self;
}

@end
