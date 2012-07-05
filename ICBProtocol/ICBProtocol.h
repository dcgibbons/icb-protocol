//
//  ICBProtocol.h
//  ICBProtocol
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "DebugKit.h"

//
// Useful debugging macros from http://stackoverflow.com/questions/969130/nslog-tips-and-tricks
//
#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define DLog(...)
#endif
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#ifdef DEBUG
#   define ULog(fmt, ...)  { UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"%s\n [Line %d] ", __PRETTY_FUNCTION__, __LINE__] message:[NSString stringWithFormat:fmt, ##__VA_ARGS__]  delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil]; [alert show]; }
#else
#   define ULog(...)
#endif


@interface ICBProtocol : NSObject

extern const int MAX_FIELDS;
extern const int MAX_PACKET_SIZE;
extern const int MAX_NICK_SIZE;
extern const int MAX_OPEN_MESSAGE_SIZE;
extern const int MAX_PERSONAL_MESSAGE_SIZE;
extern const int MAX_WRITE_MESSAGE_SIZE;

typedef enum {
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
