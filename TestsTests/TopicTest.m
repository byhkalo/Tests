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
#import "BKQuestion.h"

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

- (void)testForInitiallyEmptyQuestionList {
    XCTAssertEqual([[topic recentQuestions]count], (NSInteger)0, @"No questions added yet, count should be zero");
}

- (void)testForAddingAQuestionToTheList {
    BKQuestion* question = [[BKQuestion alloc]init];
    [topic addQuestion:question];
    XCTAssertEqual([[topic recentQuestions]count], (NSInteger)1, @"We add a question, count must be 1");
}

- (void)testQuestionsSortedChronologicallyFuturePast {
    BKQuestion* q1 = [[BKQuestion alloc]init];
    q1.date = [NSDate distantFuture];
    BKQuestion* q2 = [[BKQuestion alloc]init];
    q2.date = [NSDate distantPast];
    
    [topic addQuestion:q1];
    [topic addQuestion:q2];
    
    BKQuestion* questionFirst = [[topic recentQuestions]objectAtIndex:0];
    BKQuestion* questionSecond = [[topic recentQuestions]objectAtIndex:1];
    
    XCTAssertEqualObjects([questionFirst.date laterDate:questionSecond.date], questionFirst.date, @"Class topic must sorted questions by date");
}
- (void)testQuestionsSortedChronologicallyPastFuture {
    BKQuestion* q1 = [[BKQuestion alloc]init];
    q1.date = [NSDate distantPast];
    BKQuestion* q2 = [[BKQuestion alloc]init];
    q2.date = [NSDate distantFuture];
    
    [topic addQuestion:q1];
    [topic addQuestion:q2];
    
    BKQuestion* questionFirst = [[topic recentQuestions]objectAtIndex:0];
    BKQuestion* questionSecond = [[topic recentQuestions]objectAtIndex:1];
    
    XCTAssertEqualObjects([questionFirst.date laterDate:questionSecond.date], questionFirst.date, @"Class topic must sorted questions by date");
}

- (void)testQuestionsLimitCountTwenty {
    BKQuestion* helpQuestion = [[BKQuestion alloc]init];
    for (NSInteger i; i<25; i++) {
        [topic addQuestion:helpQuestion];
    }
    XCTAssertTrue([[topic recentQuestions]count]<=20, @"Question count must be less or equal twenty");
}
@end
