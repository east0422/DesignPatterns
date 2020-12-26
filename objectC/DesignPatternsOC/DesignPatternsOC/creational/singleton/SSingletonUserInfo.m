//
//  SSingletonUserInfo.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import "SSingletonUserInfo.h"

@implementation SSingletonUserInfo

// 全局变量
static SSingletonUserInfo *userInfo = nil;

// 单例方法
+ (instancetype)defaultUserInfo {
    return [[self alloc] init];
}

// 初始化方法
- (instancetype)init{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        userInfo = [super init];
    });
    // 阻止子类使用
    if (![NSStringFromClass([self class]) isEqualToString:@"SSingletonUserInfo"]) {
        NSLog(@"SSingletonUserInfo子类不允许使用defaultUserInfo");
        // 断言
        NSAssert(false, @"不允许使用defaultUserInfo");
    }
    
    return userInfo;
}

// alloc会调用allocWithZone:
+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        userInfo = [super allocWithZone:zone];
    });
    // 阻止子类使用
    if (![NSStringFromClass([self class]) isEqualToString:@"SSingletonUserInfo"]) {
        NSLog(@"SSingletonUserInfo子类不允许使用defaultUserInfo");
        // 断言
        NSAssert(false, @"不允许使用defaultUserInfo");
    }
    
    return userInfo;
}

// copy会调用copyWithZone:
- (instancetype)copyWithZone:(NSZone *)zone{
    return userInfo;
}

// mutableCopy会调用mutableCopyWithZone:
- (instancetype)mutableCopyWithZone:(NSZone *)zone{
    return userInfo;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%p %@ %@ %lu", self, _name, _age, (unsigned long)_sex];
}

@end
