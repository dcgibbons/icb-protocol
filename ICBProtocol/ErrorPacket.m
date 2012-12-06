//
//  ErrorPacket.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/5/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "ErrorPacket.h"

@implementation ErrorPacket

- (id)initWithData:(NSData *)data
{
    if (self = [super initWithData:data]) 
    {
        // NO-OP
    }
    return self;
}

- (NSString *)errorText
{
    NSString *errorText = fields[0];
    return errorText;
}


@end
