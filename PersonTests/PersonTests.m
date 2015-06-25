//
//  PersonTests.m
//  PersonTests
//
//  Created by Byhkalo Konstantyn on 25.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "BKPerson.h"

@interface PersonTests : XCTestCase {
    BKPerson* person;
}

@end

@implementation PersonTests

- (void)setUp {
    [super setUp];
    person = [[BKPerson alloc]initWithName:@"NamePerson" avatarLocation:@"http://somesite.com/avatar.png"];
}

- (void)tearDown {
    person = nil;
    [super tearDown];
}

- (void)testThatPersonHasTheRightName {
    XCTAssertEqualObjects(person.name, @"NamePerson", @"Persom must have its name");
}

- (void)testThatPersonHasAnAvatarURL {
    XCTAssertEqualObjects([person.avatarURL absoluteString], @"http://somesite.com/avatar.png", @"The Person's avatar should be represented by a URL");
}
@end
