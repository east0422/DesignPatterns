//
//  NSObject+MementoCenter.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-13.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (MementoCenter)

// 保存状态
- (void)saveStateWithKey:(NSString *)key;

// 恢复状态
- (void)recoveryStateWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
