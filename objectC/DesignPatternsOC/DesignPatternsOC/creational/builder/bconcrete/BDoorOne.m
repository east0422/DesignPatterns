//
//  BDoorOne.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import "BDoorOne.h"

@implementation BDoorOne

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.doorColor = [UIColor whiteColor];
    }
    return self;
}

- (instancetype)initWithColor:(UIColor *)color {
    self = [super init];
    if (self) {
        self.doorColor = color;
    }
    return self;
}

- (instancetype)build {
    return [[BDoorOne alloc] init];
}

- (void)color:(UIColor *)color {
    self.doorColor = color;
}

- (NSString *)info {
    return [NSString stringWithFormat:@"doorColor: %@", self.doorColor];
}

@end
