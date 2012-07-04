//
//  ICBPacket.h
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ICBProtocol.h"

@interface ICBPacket : NSObject {
@protected
    kPacketType packetType;
    NSMutableArray *fields;
}

+ (id)packetWithBuffer:(NSData *)data;

- (id)initWithData:(NSData *)data;

@end
