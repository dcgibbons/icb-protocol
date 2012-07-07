//
//  ICBProtocolTests.m
//  ICBProtocolTests
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "ICBProtocolTests.h"
#import "BeepPacket.h"
#import "CommandPacket.h"
#import "CommandOutputPacket.h"
#import "ErrorPacket.h"
#import "ExitPacket.h"
#import "OpenPacket.h"
#import "PersonalPacket.h"
#import "PingPacket.h"
#import "PongPacket.h"
#import "ProtocolPacket.h"
#import "StatusPacket.h"

@implementation ICBProtocolTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testBeepPacket
{
    NSData *data = [@"ksuperman" dataUsingEncoding:NSASCIIStringEncoding];
    BeepPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create BeepPacket");
    
    STAssertEqualObjects([packet nick], @"superman", @"invalid user nickname");
}

- (void)testCommandPacket
{
    NSData *data = [@"hwho\1Fred" dataUsingEncoding:NSASCIIStringEncoding];
    CommandPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create CommandPacket");
    
    STAssertEqualObjects([packet command], @"who", @"invalid command");
    STAssertEqualObjects([packet args], @"Fred", @"invalid command args");
}

- (void)testCommandOutputPacket
{
    NSData *data = [@"igh" dataUsingEncoding:NSASCIIStringEncoding];
    CommandOutputPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create CommandOutputPacket");
}

- (void)testErrorPacket
{
    NSData *data = [@"eyou smell" dataUsingEncoding:NSASCIIStringEncoding];
    ErrorPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create ErrorPacket");
    
    STAssertEqualObjects([packet errorText], @"you smell", @"invalid error message");
}

- (void)testExitPacket
{
    NSData *data = [@"g" dataUsingEncoding:NSASCIIStringEncoding];
    ExitPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create ExitPacket");
}

- (void)testOpenPacket
{
    NSData *data= [@"bBob\1i'm boring..." dataUsingEncoding:NSASCIIStringEncoding];
    OpenPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create OpenPacket");
    
    STAssertEqualObjects([packet nick], @"Bob", @"invalid user nickname");
    STAssertEqualObjects([packet text], @"i'm boring...", @"invalid open message text");
}
      
- (void)testPersonalPacket
{
    NSData *data = [@"cFred\1come on! let's go out!" dataUsingEncoding:NSASCIIStringEncoding];
    PersonalPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create PersonalPacket");
    
    STAssertEqualObjects([packet nick], @"Fred", @"invalid user nickname");
    STAssertEqualObjects([packet text], @"come on! let's go out!", @"invalid personal message text");
}

- (void)testPingPacket
{
    NSData *data = [@"l" dataUsingEncoding:NSASCIIStringEncoding];
    PingPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create PingPacket");
}

- (void)testPongPacket
{
    NSData *data = [@"m" dataUsingEncoding:NSASCIIStringEncoding];
    PongPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create PongPacket");
}

- (void)testProtocolPacket
{
    NSData *data = [@"j1\1www.icb.net\1ICB Server v1.2c" dataUsingEncoding:NSASCIIStringEncoding];
 
    ProtocolPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create ProtocolPacket");
    
    STAssertEquals([packet protocolLevel], 1, @"invalid protocol level");
    STAssertEqualObjects([packet serverName], @"www.icb.net", @"invalid server name");
    STAssertEqualObjects([packet serverDescription], @"ICB Server v1.2c", @"invalid server description");
}

- (void)testStatusPacket
{
    NSData *data = [@"dError\1The Server Doesn't Like You" dataUsingEncoding:NSASCIIStringEncoding];
    StatusPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create StatusPacket");
    
    STAssertEqualObjects([packet header], @"Error", @"invalid status header");
    STAssertEqualObjects([packet text], @"The Server Doesn't Like You", @"invalid status message text");
}


@end
