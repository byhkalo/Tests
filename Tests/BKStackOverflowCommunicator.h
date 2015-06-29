//
//  BKStackOverflowCommunicator.h
//  Tests
//
//  Created by Byhkalo Konstantyn on 26.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BKStackOverflowCommunicator : NSObject

-(BOOL) wasAskedToFetchQuestions;
-(void) searchForQuestionWithTag:(NSString*) tag;

@end
