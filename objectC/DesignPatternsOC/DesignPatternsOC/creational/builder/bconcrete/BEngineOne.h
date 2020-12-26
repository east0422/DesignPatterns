//
//  BEngineOne.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../bprotocols/BCarBuilderProtocol.h"
#import "../bprotocols/BEngineBuilderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BEngineOne : NSObject <BCarBuilderProtocol, BEngineBuilderProtocol>

/** 型号 */
@property (nonatomic, copy) NSString *engineModel;
/** 尺寸 */
@property (nonatomic, assign) CGFloat engineScale;
/** 重量 */
@property (nonatomic, assign) CGFloat engineWeight;

- (instancetype)initWithMode:(NSString *)model scale:(CGFloat)scale andWeight:(CGFloat)weight;

@end

NS_ASSUME_NONNULL_END
