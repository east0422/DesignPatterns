//
//  Voltage220Protocol.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-4-25.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Voltage220Protocol <NSObject>

// 转换为220v
- (float)convertToV220;

@end

NS_ASSUME_NONNULL_END
