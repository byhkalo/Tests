//
//  BKPerson.h
//  Tests
//
//  Created by Byhkalo Konstantyn on 25.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BKPerson : NSObject
@property (readonly, nonatomic) NSURL* avatarURL;
@property (readonly, nonatomic) NSString* name;

- (id)initWithName:(NSString*) name avatarLocation:(NSString*) location;
@end
