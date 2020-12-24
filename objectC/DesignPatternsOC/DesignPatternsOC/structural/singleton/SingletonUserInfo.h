//
//  SingletonUserInfo.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    SexMale,
    SexFemale,
} ESexType;

@interface SingletonUserInfo : NSObject

/** 姓名 */
@property (nonatomic, strong) NSString *name;
/** 年龄 */
@property (nonatomic, strong) NSNumber *age;
/** 性别 */
@property (nonatomic, assign) ESexType sex;

+ (instancetype)defaultUserInfo;

@end

NS_ASSUME_NONNULL_END
