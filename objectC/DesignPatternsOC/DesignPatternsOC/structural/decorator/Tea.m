//
//  Tea.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-29.
//  Copyright © 2021 east. All rights reserved.
//

#import "Tea.h"

@implementation Tea

- (void)drink {
    NSLog(@"%@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)cook {
    NSLog(@"%@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

@end
