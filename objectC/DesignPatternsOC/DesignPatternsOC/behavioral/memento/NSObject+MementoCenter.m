//
//  NSObject+MementoCenter.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-13.
//  Copyright © 2021 east. All rights reserved.
//

#import "NSObject+MementoCenter.h"
#import "MementoCenter.h"

@implementation NSObject (MementoCenter)

- (void)saveStateWithKey:(NSString *)key {
    if ([self conformsToProtocol:@protocol(MementoCenterProtocol)]) {
        [MementoCenter saveMementoObject:(id<MementoCenterProtocol>)self withKey:key];
    }
}

- (void)recoveryStateWithKey:(NSString *)key {
    id mementObj = [MementoCenter mementoObjectWithKey:key];
    if([self conformsToProtocol:@protocol(MementoCenterProtocol)]) {
        id<MementoCenterProtocol> state = (id<MementoCenterProtocol>)self;
        [state recoveryFromState:mementObj];
    }
}

@end
