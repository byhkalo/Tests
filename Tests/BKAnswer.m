//
//  BKAnswer.m
//  Tests
//
//  Created by Byhkalo Konstantyn on 26.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import "BKAnswer.h"

@implementation BKAnswer

- (NSComparisonResult)compare:(BKAnswer*) otherAnswer {
    if (self.accept && !otherAnswer.accept) {
        return NSOrderedAscending;
    }else if (!self.accept && otherAnswer.accept) {
        return NSOrderedDescending;
    }
    if (self.score > otherAnswer.score) {
        return NSOrderedAscending;
    }else if (self.score < otherAnswer.score) {
        return NSOrderedDescending;
    }else{
        return NSOrderedSame;
    }
}

- (BOOL) isAccept {
    return _accept;
}

@end
