//
//  BWheelOne.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../bprotocols/BCarBuilderProtocol.h"
#import "../bprotocols/BWheelBuilderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BWheelOne : NSObject<BCarBuilderProtocol, BWheelBuilderProtocol>
/** 轮子数量 */
@property (nonatomic, assign) NSUInteger wheelNum;

- (instancetype)initWithWheelNum:(NSUInteger)num;

@end

NS_ASSUME_NONNULL_END
