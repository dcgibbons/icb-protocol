//
//  ICBProtocol.h
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DebugKit.h"

@interface ICBProtocol : NSObject

extern const int MAX_FIELDS;
extern const int MAX_PACKET_SIZE;
extern const int MAX_NICK_SIZE;
extern const int MAX_OPEN_MESSAGE_SIZE;
extern const int MAX_PERSONAL_MESSAGE_SIZE;
extern const int MAX_WRITE_MESSAGE_SIZE;

typedef enum {
    INVALID = ' ',
    LOGIN = 'a',
    OPEN = 'b',
    PERSONAL = 'c',
    STATUS = 'd',
    ERROR = 'e',
    IMPORTANT = 'f',
    EXIT = 'g',
    COMMAND = 'h',
    COMMAND_OUT = 'i',
    PROTOCOL = 'j',
    BEEP = 'k',
    PING = 'l',
    PONG = 'm',
    NOOP = 'n'
} kPacketType;

@end
