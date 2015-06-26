//
//  BKQuestion.h
//  Tests
//
//  Created by Byhkalo Konstantyn on 25.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BKAnswer.h"

@interface BKQuestion : NSObject

@property (strong, nonatomic) NSDate* date;
@property (strong, nonatomic) NSString* title;
@property (assign, nonatomic) NSInteger score;
@property (strong, nonatomic) NSArray* answers;

- (void) addAnswer:(BKAnswer*) answer;

@end
