//
//  ErrorPacket.h
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/5/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "ICBPacket.h"

@interface ErrorPacket : ICBPacket

- (id)initWithData:(NSData *)data;
- (NSString *)errorText;

@end
