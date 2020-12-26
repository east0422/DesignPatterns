//
//  BBodyOne.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import "BBodyOne.h"

@implementation BBodyOne

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.seatNum = 5;
    }
    return self;
}

- (instancetype)initWithSeatNum:(NSUInteger)num {
    self = [super init];
    if (self) {
        self.seatNum = num;
    }
    return self;
}

- (instancetype)build {
    return [[BBodyOne alloc] init];
}

- (void)seatNum:(NSUInteger)num {
    self.seatNum = num;
}

- (NSString *)info {
    return [NSString stringWithFormat:@"seatNum: %lu", (unsigned long)self.seatNum];
}

@end
