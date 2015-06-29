//
//  QuestionCreationTests.m
//  Tests
//
//  Created by Byhkalo Konstantyn on 26.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import <OCMock/OCMockObject.h>
#import "BKStackOverflowManager.h"
#import "BKStackOverflowCommunicator.h"
#import "BKTopic.h"

@interface QuestionCreationTests : XCTestCase {
    BKStackOverflowManager* manager;
}

@end

@implementation QuestionCreationTests

- (void)setUp {
    [super setUp];
    manager = [[BKStackOverflowManager alloc]init];
}

- (void)tearDown {
    manager = nil;
    [super tearDown];
}

- (void)testNonConformingObjectCannotBeDelegate {
    XCTAssertThrows(manager.delegate = (id <BKStackOverflowManagerDelegate>)[NSNull null], @"NSNull should not be used as the delegate");
}

- (void)testConformingObjectCanBeDelegate {
    //id <BKStackOverflowManagerDelegate> delegate = [[BKMockStackOverflowManagerDelegate alloc]init];
    XCTAssertNoThrow(manager.delegate = OCMProtocolMock(@protocol(BKStackOverflowManagerDelegate)), @"Object can be used as delegate");
}

- (void)testManagerNilAsDelegate {
    XCTAssertNoThrow(manager.delegate = nil, @"it should be accpteble to use nil as an object delegate");
}

- (void)testAskingForQuestionsMeansRequestingData {
    id communicator = OCMPartialMock([[BKStackOverflowCommunicator alloc] init]);
    //communicator = [OCMockObject mockForClass:[BKStackOverflowCommunicator class]];
    manager.communicator = communicator;
    BKTopic* topic = [[BKTopic alloc ] initWithName:@"iPhone" tag:@"iphone"];
    [manager fetchQuestionsOnTopic: topic];
    XCTAssertTrue([communicator wasAskedToFetchQuestions], @"The communicator should need to fetch data");
}

@end
