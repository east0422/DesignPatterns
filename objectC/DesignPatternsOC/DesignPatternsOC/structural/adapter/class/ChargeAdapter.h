//
//  ChargeAdapter.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-4-25.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChargeAdapter : NSObject

// 转换为220V电压
- (float)voltage220;

@end

NS_ASSUME_NONNULL_END
