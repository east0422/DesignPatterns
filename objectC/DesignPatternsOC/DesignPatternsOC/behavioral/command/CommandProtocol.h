//
//  CommandProtocol.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-15.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CommandProtocol <NSObject>

// 执行命令
- (void)excute;

// 撤销命令
- (void)rollbackExcute;

// 初始化并设置参数
- (instancetype)initReceiver:(Receiver *)receiver;

@end

NS_ASSUME_NONNULL_END
