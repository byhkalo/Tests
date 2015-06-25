//
//  BKTopic.m
//  Tests
//
//  Created by Byhkalo Konstantyn on 25.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import "BKTopic.h"

@implementation BKTopic

- (id)initWithName:(NSString*) newName tag:(NSString *)tag {
    self = [super init];
    if (self) {
        _name = newName;
        _tag = tag;
    }
    return self;
}

- (NSArray*) recentQuestions {
    return [NSArray array];
}
@end
