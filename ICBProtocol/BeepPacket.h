//
//  BeepPacket.h
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "ICBPacket.h"

@interface BeepPacket : ICBPacket

- (id)initWithData:(NSData *)bytes;
- (NSString *)nick;

@end
