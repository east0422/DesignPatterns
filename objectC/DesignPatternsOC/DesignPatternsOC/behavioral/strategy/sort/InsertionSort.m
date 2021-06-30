//
//  InsertionSort.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-6-30.
//  Copyright © 2021 east. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort

- (NSArray *)sortWithArray:(NSArray *)arr {
    NSMutableArray *mutArr = [arr mutableCopy];
    if(mutArr == nil || mutArr.count == 0) {
        NSLog(@"数组为空数组");
        return nil;
    }

    for (int i = 0; i < mutArr.count; i++) {
        NSNumber *temp = mutArr[i];
        for (int j = i - 1; j >= 0 && [temp intValue] < [mutArr[j] intValue]; j--) {
            [mutArr exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
        }
    }
    NSLog(@"插入排序后数组为:%@", mutArr);
    return [mutArr copy];
}

@end
