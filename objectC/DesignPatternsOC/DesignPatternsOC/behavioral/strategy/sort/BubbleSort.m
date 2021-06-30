//
//  BubbleSort.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-6-30.
//  Copyright © 2021 east. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

- (NSArray *)sortWithArray:(NSArray *)arr {
    NSMutableArray *mutArr = [arr mutableCopy];
    if(mutArr == nil || mutArr.count == 0) {
        NSLog(@"数组为空数组");
        return nil;
    }

    for (int i = 0; i < mutArr.count; i++) {
        for (int j = 0; j < i; j++) {
            if ([mutArr[i] intValue] < [mutArr[j] intValue]) {
                [mutArr exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
    }
    NSLog(@"冒泡排序后数组为:%@", mutArr);
    return [mutArr copy];
}

@end
