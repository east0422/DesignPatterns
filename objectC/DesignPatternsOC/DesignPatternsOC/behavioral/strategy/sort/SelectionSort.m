//
//  SelectionSort.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-6-30.
//  Copyright © 2021 east. All rights reserved.
//

#import "SelectionSort.h"

@implementation SelectionSort

- (NSArray *)sortWithArray:(NSArray *)arr {
    NSMutableArray *mutArr = [arr mutableCopy];
    if(mutArr == nil || mutArr.count == 0) {
        NSLog(@"数组为空数组");
        return nil;
    }

    for (int i = 0; i < mutArr.count; i++) {
        for (int j = i + 1; j < mutArr.count; j++) {
            if ([mutArr[i] intValue] > [mutArr[j] intValue]) {
                [mutArr exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
    }
    NSLog(@"选择排序后数组为:%@", mutArr);
    return [mutArr copy];
}

@end
