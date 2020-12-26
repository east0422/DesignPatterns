//
//  BWheelOne.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import "BWheelOne.h"

@implementation BWheelOne

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.wheelNum = 4;
    }
    return self;
}

- (instancetype)initWithWheelNum:(NSUInteger)num {
    self = [super init];
    if (self) {
        self.wheelNum = num;
    }
    return self;
}

- (instancetype)build {
    return [[BWheelOne alloc] init];
}

- (void)num:(NSUInteger)num {
    self.wheelNum = num;
}

- (NSString *)info {
    return [NSString stringWithFormat:@"wheelNum: %lu", (unsigned long)self.wheelNum];
}

@end
