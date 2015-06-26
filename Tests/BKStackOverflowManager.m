//
//  BKStackOverflowManager.m
//  Tests
//
//  Created by Byhkalo Konstantyn on 26.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import "BKStackOverflowManager.h"

@implementation BKStackOverflowManager

- (void) setDelegate:(id<BKStackOverflowManagerDelegate>)newDelegate {
    if(newDelegate && ![newDelegate conformsToProtocol:@protocol(BKStackOverflowManagerDelegate)]) {
        [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Delegate object does not conform to protocol" userInfo:nil] raise];
    }
    _delegate = newDelegate;
}

@end
