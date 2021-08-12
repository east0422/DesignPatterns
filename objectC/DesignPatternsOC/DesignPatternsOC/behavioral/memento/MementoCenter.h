//
//  MementoCenter.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-12.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoCenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MementoCenter : NSObject

// 存储备忘录对象
+ (void)saveMementoObject:(id<MementoCenterProtocol>)mementoObj withKey:(NSString *)key;

// 获取备忘录对象
+ (id)mementoObjectWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
