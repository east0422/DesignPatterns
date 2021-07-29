//
//  TeaDecorator.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-29.
//  Copyright © 2021 east. All rights reserved.
//

#import "TeaDecorator.h"

@implementation TeaDecorator

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.tea = [[Tea alloc] init];
    }
    return self;
}

- (void)drink {
    NSLog(@"%@ %@ 先烧水", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [self.tea drink];
}

@end
