//
//  ProtocolPacket.h
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "ICBPacket.h"

@interface ProtocolPacket : ICBPacket

- (id)initWithData:(NSData *)bytes;
- (int)protocolLevel;
- (NSString *)serverName;
- (NSString *)serverDescription;

@end
