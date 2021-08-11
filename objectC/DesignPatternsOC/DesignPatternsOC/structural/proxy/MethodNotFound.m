//
//  MethodNotFound.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-11.
//  Copyright © 2021 east. All rights reserved.
//

#import "MethodNotFound.h"

@implementation MethodNotFound

+ (instancetype)shareInstance {
    static MethodNotFound *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[MethodNotFound alloc] init];
    });
    return instance;
}

- (void)notFoundExcute: (NSArray *)infos {
    NSLog(@"%@, %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), infos);
}

@end
