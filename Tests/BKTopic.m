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
    return questions;
}
@end
