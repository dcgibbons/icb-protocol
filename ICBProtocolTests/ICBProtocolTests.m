//
//  ICBProtocolTests.m
//  ICBProtocolTests
//
//  Created by Chad Gibbons on 7/4/12.
//  Copyright (c) 2012 Nuclear Bunny Studios, LLC. All rights reserved.
//

#import "ICBProtocolTests.h"
#import "ProtocolPacket.h"

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

- (void)testProtocolPacket
{
    NSData *data = [@"j1www.icb.net\1ICB Server v1.2c" dataUsingEncoding:NSASCIIStringEncoding];
    ProtocolPacket *packet = [ICBPacket packetWithBuffer:data];
    STAssertNotNil(packet, @"unable to create ProtocolPacket");
}
@end