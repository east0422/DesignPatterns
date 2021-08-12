//
//  Schedule.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-12.
//  Copyright © 2021 east. All rights reserved.
//

#import "Schedule.h"

@implementation Schedule

- (id)currentState {
    return self;
}

- (void)recoveryFromState:(id)state {
    if ([state isKindOfClass:[self class]]) {
        Schedule *schedule = state;
        self.date = schedule.date;
        self.events = schedule.events;
    }
}

+ (BOOL)supportsSecureCoding {
    return YES;
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    [coder encodeObject:self.date forKey:@"date"];
    [coder encodeObject:self.events forKey:@"events"];
}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)coder {
    if (self = [super init]) {
        self.date = [coder decodeObjectForKey:@"date"];
        self.events = [coder decodeObjectForKey:@"events"];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@, %@", self.date, self.events];
}

@end
