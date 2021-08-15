//
//  Invoker.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-15.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Invoker : NSObject

+ (instancetype)shareInstance;

// 回退
- (void)rollBack;
// 添加指令并执行
- (void)addAndExcute: (id<CommandProtocol>)command;

@end

NS_ASSUME_NONNULL_END
