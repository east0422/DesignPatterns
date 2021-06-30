//
//  QuickSort.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-6-30.
//  Copyright © 2021 east. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

- (NSArray *)sortWithArray:(NSArray *)arr {
    NSMutableArray *mutArr = [arr mutableCopy];
    if(mutArr == nil || mutArr.count == 0) {
        NSLog(@"数组为空数组");
        return nil;
    }
    [self quickSort: mutArr startIndex:0 endIndex:mutArr.count - 1];
    
    NSLog(@"快速排序后数组为:%@", mutArr);
    return [mutArr copy];
}

- (void)quickSort:(NSMutableArray *)mutArr startIndex:(NSInteger)startIndex endIndex:(NSInteger)endIndex{
    if(startIndex >= endIndex) {
        return;
    }
     
    NSNumber * temp = [mutArr objectAtIndex:startIndex];
    NSInteger tempIndex = startIndex; //临时索引 处理交换位置(即下一个交换的对象的位置)
    for(NSInteger i = startIndex + 1; i <= endIndex ; i++){
        NSNumber *t = [mutArr objectAtIndex:i];
        if([temp intValue] > [t intValue]){
            tempIndex = tempIndex + 1;
            [mutArr exchangeObjectAtIndex:tempIndex withObjectAtIndex:i];
        }
    }
     
    [mutArr exchangeObjectAtIndex:tempIndex withObjectAtIndex:startIndex];
    [self quickSort:mutArr startIndex:startIndex endIndex:tempIndex - 1];
    [self quickSort:mutArr startIndex:tempIndex + 1 endIndex:endIndex];
}

@end
