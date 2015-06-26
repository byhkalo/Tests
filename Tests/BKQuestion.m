//
//  BKQuestion.m
//  Tests
//
//  Created by Byhkalo Konstantyn on 25.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import "BKQuestion.h"

@implementation BKQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        _answers = [[NSArray alloc]init];
    }
    return self;
}

- (void) addAnswer:(BKAnswer*) answer {
    self.answers = [self.answers arrayByAddingObject:answer];
}

- (NSArray*) answers {
    return [_answers sortedArrayUsingSelector:@selector(compare:)];
}
@end
