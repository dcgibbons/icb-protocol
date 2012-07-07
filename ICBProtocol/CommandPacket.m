//
//  CommandPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/6/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "CommandPacket.h"

@implementation CommandPacket

- (id)initWithCommand:(NSString *)command optionalArgs:(NSString *)args
{
    if (self = [super init])
    {
        packetType = COMMAND;
        [fields addObject:command];
        if (args != nil)
        {
            [fields addObject:args];
        }
    }
    return self;
}

- (NSString *)command
{
    NSString *command = [fields objectAtIndex:0];
    DLog(@"CommandPacket: command=%@", command);
    return command;
}

- (NSString *)args
{
    NSString *args = nil;
    if ([fields count] > 1)
    {
        args = [fields objectAtIndex:1];
    }
    DLog(@"CommandPacket: args=%@", args);
    return args;
}


@end
