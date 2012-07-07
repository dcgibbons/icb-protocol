//
//  CommandPacket.h
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/6/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "ICBPacket.h"

@interface CommandPacket : ICBPacket

- (id)initWithCommand:(NSString *)command optionalArgs:(NSString *)args;

- (NSString *)command;
- (NSString *)args;

@end
