//
//  StatusPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/5/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "StatusPacket.h"

@implementation StatusPacket

- (NSString *)header
{
    NSString *header = [fields objectAtIndex:0];
    return header;
}

- (NSString *)text
{
    NSString *text = [fields objectAtIndex:1];
    return text;
}

@end
