//
//  BEngineBuilderProtocol.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BEngineBuilderProtocol <NSObject>

/** 型号 */
- (void)model:(NSString *)model;
/** 尺寸 */
- (void)scale:(CGFloat)scale;
/** 重量 */
- (void)weight:(CGFloat)weight;
/** 信息 */
- (NSString *)info;

@end

NS_ASSUME_NONNULL_END
