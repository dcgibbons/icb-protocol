//
//  ICBProtocol.m
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "ICBProtocol.h"

@implementation ICBProtocol

const int MAX_FIELDS = 20;
const int MAX_PACKET_SIZE = 255;
const int MAX_NICK_SIZE = 12;
const int MAX_OPEN_MESSAGE_SIZE = (MAX_PACKET_SIZE - (MAX_NICK_SIZE) - 2);
const int MAX_PERSONAL_MESSAGE_SIZE = (MAX_PACKET_SIZE - (MAX_NICK_SIZE * 2) - 2);
const int MAX_WRITE_MESSAGE_SIZE = (MAX_PACKET_SIZE - (MAX_NICK_SIZE * 2) - 2 - 14);

@end
