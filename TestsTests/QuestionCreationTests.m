//
//  QuestionCreationTests.m
//  Tests
//
//  Created by Byhkalo Konstantyn on 26.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "OCMock.h"
#import "BKStackOverflowManager.h"
#import "BKMockStackOverflowManagerDelegate.h"

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
    id <BKStackOverflowManagerDelegate> delegate = [[BKMockStackOverflowManagerDelegate alloc]init];
    XCTAssertNoThrow(manager.delegate = delegate, @"Object can be used as delegate");
}

- (void)testManagerNilAsDelegate {
    XCTAssertNoThrow(manager.delegate = nil, @"it should be accpteble to use nil as an object delegate");
}

- (void)testAskingForQuestionsMeansRequestingData {
    
    
}

@end
