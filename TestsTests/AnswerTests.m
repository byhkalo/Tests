//
//  AnswerTests.m
//  AnswerTests
//
//  Created by Byhkalo Konstantyn on 26.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "BKPerson.h"
#import "BKAnswer.h"
    
@interface AnswerTests : XCTestCase {
    BKAnswer* answer;
    BKAnswer* otherAnswer;
}

@end

@implementation AnswerTests

- (void)setUp {
    [super setUp];
    answer = [[BKAnswer alloc]init];
    answer.text = @"This solve is simple. Rebuild your project";
    answer.person = [[BKPerson alloc]initWithName:@"Nick" avatarLocation:@"http://somesite.com/avatar.png"];
    answer.score = 10;
    otherAnswer = [[BKAnswer alloc]init];
    otherAnswer.text = @"Read Apple Documentetion";
    otherAnswer.score = 10;
}

- (void)tearDown {
    answer = nil;
    otherAnswer = nil;
    [super tearDown];
}

- (void)testAnswerHasText {
    XCTAssertTrue([answer.text isEqualToString: @"This solve is simple. Rebuild your project"], @"This answer must have text of solve");
}

- (void)testAnswerHasAPerson {
    XCTAssertTrue([answer.person isKindOfClass:[BKPerson class]], @"answer.person must be BKPerson class");
}

- (void)testAnswerAcceptNoInBase {
    XCTAssertFalse(answer.accept, @"Accept must be NO in base");
}

- (void)testAnswerAcceptNoThrowInSet {
    XCTAssertNoThrow(answer.accept = YES, @"Nothing Throw in set accept");
}

- (void)testScoreInNewAnswer {
    XCTAssertEqual(answer.score, (NSInteger)10, @"answer should have score");
}

- (void)testCompareAnswerWithAcceptedOneOfThem {
    otherAnswer.accept = YES;
    otherAnswer.score = answer.score +10;
    XCTAssertEqual([answer compare: otherAnswer], NSOrderedDescending, @"Accept answer should be first");
    XCTAssertEqual([otherAnswer compare: answer], NSOrderedAscending, @"Unaccept answer should be last");
}

- (void)testCompareAnswersWithEqualScore {
    XCTAssertEqual([answer compare:otherAnswer], NSOrderedSame, @"Both answers is equal score");
    XCTAssertEqual([otherAnswer compare:answer], NSOrderedSame, @"Both answers is equal score");
}

- (void)testCompareAnswersWithdifferentScoresAndSameAccept {
    otherAnswer.score = answer.score+10;
    XCTAssertEqual([answer compare:otherAnswer], NSOrderedDescending, @"Must be Descending order");
    XCTAssertEqual([otherAnswer compare:answer], NSOrderedAscending, @"Must be Ascending order");
}
@end
