//
//  BKStackOverflowManager.h
//  Tests
//
//  Created by Byhkalo Konstantyn on 26.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BKStackOverflowCommunicator.h"
#import "BKTopic.h"
@protocol BKStackOverflowManagerDelegate;

@interface BKStackOverflowManager : NSObject

@property (weak, nonatomic) id <BKStackOverflowManagerDelegate> delegate;
@property (strong, nonatomic) BKStackOverflowCommunicator* communicator;

-(void) fetchQuestionsOnTopic:(BKTopic*) topic;

@end

@protocol BKStackOverflowManagerDelegate <NSObject>

@end