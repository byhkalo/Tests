//
//  BKStackOverflowManager.h
//  Tests
//
//  Created by Byhkalo Konstantyn on 26.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol BKStackOverflowManagerDelegate;

@interface BKStackOverflowManager : NSObject

@property (weak, nonatomic) id <BKStackOverflowManagerDelegate> delegate;

@end

@protocol BKStackOverflowManagerDelegate <NSObject>

@end