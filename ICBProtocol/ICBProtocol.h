//
//  ICBProtocol.h
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ICBProtocol : NSObject

extern const int MAX_FIELDS;
extern const int MAX_PACKET_SIZE;
extern const int MAX_NICK_SIZE;
extern const int MAX_OPEN_MESSAGE_SIZE;
extern const int MAX_PERSONAL_MESSAGE_SIZE;
extern const int MAX_WRITE_MESSAGE_SIZE;

@end

#import "ICBPacket.h"
#import "BeepPacket.h"
#import "CommandPacket.h"
#import "CommandOutputPacket.h"
#import "ErrorPacket.h"
#import "ExitPacket.h"
#import "LoginPacket.h"
#import "NoOpPacket.h"
#import "PersonalPacket.h"
#import "PingPacket.h"
#import "PongPacket.h"
#import "ProtocolPacket.h"
#import "OpenPacket.h"
#import "StatusPacket.h"
