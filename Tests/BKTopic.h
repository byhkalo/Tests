//
//  BKTopic.h
//  Tests
//
//  Created by Byhkalo Konstantyn on 25.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BKQuestion.h"

@interface BKTopic : NSObject

- (id)initWithName:(NSString*) newName tag:(NSString*) tag;
- (NSArray*) recentQuestions;
- (void) addQuestion:(BKQuestion*) question;
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* tag;
@end
