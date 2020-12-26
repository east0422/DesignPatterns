//
//  BWheelBuilderProtocol.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BWheelBuilderProtocol <NSObject>

/** 轮子数量 */
- (void)num:(NSUInteger)num;
/** 信息 */
- (NSString *)info;

@end

NS_ASSUME_NONNULL_END
