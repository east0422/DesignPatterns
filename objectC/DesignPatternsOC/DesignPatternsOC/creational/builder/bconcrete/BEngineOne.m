//
//  BEngineOne.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import "BEngineOne.h"

@implementation BEngineOne

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.engineModel = @"engineOne";
        self.engineScale = 1.5;
        self.engineWeight = 30;
    }
    return self;
}

- (instancetype)initWithMode:(NSString *)model scale:(CGFloat)scale andWeight:(CGFloat)weight {
    self = [super init];
    if (self) {
        self.engineModel = model;
       self.engineScale = scale;
       self.engineWeight = weight;
   }
   return self;
}

- (instancetype)build {
    return [[BEngineOne alloc] init];
}

- (void)model:(NSString *)model {
    self.engineModel = model;
}

- (void)scale:(CGFloat)scale {
    self.engineScale = scale;
}

- (void)weight:(CGFloat)weight {
    self.engineWeight = weight;
}

- (NSString *)info {
    return [NSString stringWithFormat:@"engine: %@, %f, %f", self.engineModel, self.engineScale, self.engineWeight];
}

@end
