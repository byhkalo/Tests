//
//  BKPerson.m
//  Tests
//
//  Created by Byhkalo Konstantyn on 25.06.15.
//  Copyright (c) 2015 Byhkalo Konstantyn. All rights reserved.
//

#import "BKPerson.h"

@implementation BKPerson
- (id)initWithName:(NSString*) name avatarLocation:(NSString*) location {
    self = [super init];
    if (self) {
        _name = name;
        _avatarURL = [[NSURL alloc]initWithString:location];
    }
    return self;
}
@end
