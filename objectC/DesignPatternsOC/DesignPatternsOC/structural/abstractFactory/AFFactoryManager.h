//
//  AFFactoryManager.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "factory/AFBaseFactory.h"
#import "factory/AFAppleFactory.h"
#import "factory/AFAndroidFactory.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    EAFFactoryTypeAndroid,
    EAFFactoryTypeApple,
} EAFFactoryType;

@interface AFFactoryManager : NSObject

/** 选择某个工厂 */
+ (AFBaseFactory *)chooseFactoryWithBrand:(EAFFactoryType)factoryBrand;

@end

NS_ASSUME_NONNULL_END
