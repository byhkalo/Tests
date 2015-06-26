//
//  QuestionTests.m
//  QuestionTests
//
//  Created by Byhkalo Konstantyn on 25.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "BKQuestion.h"
#import "BKAnswer.h"

@interface QuestionTests : XCTestCase {
    BKQuestion* question;
    BKAnswer* hightAnswer;
    BKAnswer* lowAnswer;
}

@end

@implementation QuestionTests

- (void)setUp {
    [super setUp];
    question = [[BKQuestion alloc]init];
    question.date = [NSDate distantPast];
    question.title = @"Some Question Title!";
    question.score = 43;
    
    lowAnswer = [[BKAnswer alloc]init];
    lowAnswer.score = -3;
    [question addAnswer:lowAnswer];
    
    BKAnswer* acceptAnswer = [[BKAnswer alloc]init];
    acceptAnswer.accept = YES;
    acceptAnswer.score = 2;
    [question addAnswer:acceptAnswer];
    
    hightAnswer = [[BKAnswer alloc]init];
    hightAnswer.score = 10;
    [question addAnswer:hightAnswer];
}

- (void)tearDown {
    question = nil;
    hightAnswer = nil;
    lowAnswer = nil;
    [super tearDown];
}

- (void)testQuestionHasADate {
    NSDate* testDate = [NSDate distantPast];
    question.date = testDate;
    XCTAssertEqualObjects(question.date, testDate, @"Question need to provide its date");
}

- (void)testQuestionKeepScore {
    XCTAssertEqual(question.score, 43, @"Question need a numeric score");
}

- (void)testQuestionHasATitle {
    XCTAssertEqualObjects(question.title, @"Some Question Title!", @"Question should knowits title");
}

- (void)testSetTextWithoutThrow {
    BKAnswer* answer = [[BKAnswer alloc]init];
    XCTAssertNoThrow([question addAnswer:answer], @"Text should be add");
}

- (void)testFirstObjectAnswersIsAccepted {
    XCTAssertTrue([[question.answers firstObject] isAccept], @"first object must be accept");
}

- (void)testIndexOfObjectInArray {
    NSInteger hightIndex = [question.answers indexOfObject:hightAnswer];
    NSInteger lowIndex = [question.answers indexOfObject:lowAnswer];
    XCTAssertTrue(hightIndex<lowIndex,@"Hight index must be less");
}
@end
