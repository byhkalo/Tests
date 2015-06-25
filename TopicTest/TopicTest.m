//
//  TopicTest.m
//  TopicTest
//
//  Created by Byhkalo Konstantyn on 25.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "BKTopic.h"

@interface TopicTest : XCTestCase {
     BKTopic* topic;
}

@end

@implementation TopicTest

- (void)setUp {
    [super setUp];
    topic = [[BKTopic alloc]initWithName:@"iPhone" tag:@"iphone"];
}

- (void)tearDown {
    topic = nil;
    [super tearDown];
}

- (void)testThatTopicExists {
    XCTAssertNotNil(topic, @"Should be able to create a Topic instance");
}

- (void)testThatTopicCanBeNamed {
    XCTAssertEqualObjects(topic.name, @"iPhone", @"the Topic should have the name I gave it");
}

- (void)testThatTopicHasATag {
    XCTAssertEqualObjects(topic.tag, @"iphone", @"Topic need to have tags");
}

- (void)testForAListOfQestions {
    XCTAssertTrue([[topic recentQuestions] isKindOfClass:[NSArray class]], @"Topic should provide a list of recent questions");
}
@end
