//
//  BKTopic.m
//  Tests
//
//  Created by Byhkalo Konstantyn on 25.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import "BKTopic.h"

@implementation BKTopic {
    NSArray* questions;
}

- (id)initWithName:(NSString*) newName tag:(NSString *)tag {
    self = [super init];
    if (self) {
        _name = newName;
        _tag = tag;
        questions = [[NSArray alloc]init];
    }
    return self;
}

- (void) addQuestion:(BKQuestion*) question {
    questions = [questions arrayByAddingObject:question];
}

- (NSArray*) recentQuestions {
<<<<<<< HEAD
    return [self sortedArrayLatestFirst:questions];
}

- (NSArray*) sortedArrayLatestFirst:(NSArray*) questionArray {
    return [questionArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        BKQuestion* q1 = obj1;
        BKQuestion* q2 = obj2;
        return [q2.date compare:q1.date];
    }];
=======
    return questions;
>>>>>>> 5dda2d307976c79acf01edde390cc57b686f6972
}

- (void) addQuestion:(BKQuestion*) question {
    NSArray* newQuestions = [questions arrayByAddingObject:question];
    if ([newQuestions count]>20) {
        newQuestions = [self sortedArrayLatestFirst:questions];
        newQuestions = [newQuestions subarrayWithRange:NSMakeRange(0, 20)];
    }
    questions = newQuestions;
}

@end
