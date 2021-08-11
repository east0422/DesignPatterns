//
//  AdvanceMaleAgent.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-11.
//  Copyright © 2021 east. All rights reserved.
//

#import "AdvanceMaleAgent.h"

@implementation AdvanceMaleAgent

- (void)buy:(nonnull NSString *)goods withTip:(CGFloat)tip {
    NSLog(@"%@, %f,  %@ %@", goods, tip, NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)sell:(nonnull NSString *)goods withTip:(CGFloat)tip {
    NSLog(@"%@, %f,  %@ %@", goods, tip, NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)call {
    NSLog(@"打电话： %@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

@end
