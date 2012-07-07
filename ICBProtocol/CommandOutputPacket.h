//
//  CommandOutputPacket.h
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/6/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "ICBPacket.h"

@interface CommandOutputPacket : ICBPacket

- (NSString *)outputType;

@end
