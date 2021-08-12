//
//  MementoCenterProtocol.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-12.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MementoCenterProtocol <NSObject, NSCoding, NSSecureCoding>

// 获取当前状态
- (id)currentState;

// 设置当前状态
- (void)recoveryFromState:(id)state;

@end

NS_ASSUME_NONNULL_END
