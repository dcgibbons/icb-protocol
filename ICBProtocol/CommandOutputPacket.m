//
//  CommandOutputPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/6/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "CommandOutputPacket.h"

@implementation CommandOutputPacket

- (NSString *)outputType
{
    NSString *outputType = [fields objectAtIndex:0];
    return [outputType substringWithRange:NSMakeRange(0, 2)];
}

- (NSString *)output
{
    NSString *output = [fields objectAtIndex:1];
    return output;
}

- (BOOL)isModerator
{
    NSString *flag = [fields objectAtIndex:1];
    return ([flag characterAtIndex:0] == 'm');
}

- (NSString *)nickname
{
    return [fields objectAtIndex:2];
}

- (NSTimeInterval)idleTime
{
    NSString *idleTimeStr = [fields objectAtIndex:3];
    return [idleTimeStr doubleValue];
}

- (NSDate *)signOnTime
{
    NSString *signOnTimeStr = [fields objectAtIndex:5];
    NSTimeInterval timeInterval = [signOnTimeStr doubleValue];
    return [NSDate dateWithTimeIntervalSince1970:timeInterval];
}

- (NSString *)username
{
    return [fields objectAtIndex:6];
}

- (NSString *)hostname
{
    return [fields objectAtIndex:7];
}

- (NSString *)status
{
    return [fields objectAtIndex:8];
}

@end
