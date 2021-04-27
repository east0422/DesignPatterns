//
//  VolProtocol.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-4-25.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol VolProtocol <NSObject>

// 适配不同类型输出不同电压
- (float)voltage;

@end

NS_ASSUME_NONNULL_END
