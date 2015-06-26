//
//  BKAnswer.h
//  Tests
//
//  Created by Byhkalo Konstantyn on 26.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BKPerson.h"

@interface BKAnswer : NSObject

@property (strong, nonatomic) NSString* text;
@property (strong, nonatomic) BKPerson* person;
@property (assign, nonatomic) BOOL accept;
@property (assign, nonatomic) NSInteger score;

- (NSComparisonResult)compare:(BKAnswer*) otherAnswer;
- (BOOL) isAccept;

@end
