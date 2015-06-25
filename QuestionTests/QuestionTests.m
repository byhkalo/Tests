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

@interface QuestionTests : XCTestCase {
    BKQuestion* question;
}

@end

@implementation QuestionTests

- (void)setUp {
    [super setUp];
    question = [[BKQuestion alloc]init];
    question.date = [NSDate distantPast];
    question.title = @"Some Question Title!";
    question.score = 43;
}

- (void)tearDown {
    question = nil;
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
@end
