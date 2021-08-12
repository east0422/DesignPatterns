//
//  Schedule.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-12.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoCenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Schedule : NSObject <MementoCenterProtocol>

// 日期
@property (nonatomic, strong) NSString *date;
// 事件
@property (nonatomic, copy) NSString *events;

@end

NS_ASSUME_NONNULL_END
