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
    // TODO: limit fields to maximum sizes!
    if (self = [super init]) {
        packetType = LOGIN;
        [fields addObject:userId];
        [fields addObject:nick];
        [fields addObject:group];
        [fields addObject:command];
        [fields addObject:password];
    }
    DLog(@"LoginPacket: fields=%@", fields);
    return self;
}

@end
