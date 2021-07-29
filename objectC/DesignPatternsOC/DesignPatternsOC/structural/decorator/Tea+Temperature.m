//
//  Tea+Temperature.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-29.
//  Copyright © 2021 east. All rights reserved.
//

#import "Tea+Temperature.h"

@implementation Tea (Temperature)

- (void)cook {
    NSLog(@"分类 100°C %@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

@end
