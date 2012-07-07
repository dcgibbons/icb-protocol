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
    return outputType;
}
@end
