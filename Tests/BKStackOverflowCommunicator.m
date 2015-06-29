//
//  BKStackOverflowCommunicator.m
//  Tests
//
//  Created by Byhkalo Konstantyn on 26.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import "BKStackOverflowCommunicator.h"

@interface BKStackOverflowCommunicator ()

@property (assign, nonatomic) BOOL wasAskedToFetchQuestions;

@end

@implementation BKStackOverflowCommunicator

-(void) searchForQuestionWithTag:(NSString*) tag {
    self.wasAskedToFetchQuestions = YES;
}

-(BOOL) wasAskedToFetchQuestions {
    return self.wasAskedToFetchQuestions;
}
@end
