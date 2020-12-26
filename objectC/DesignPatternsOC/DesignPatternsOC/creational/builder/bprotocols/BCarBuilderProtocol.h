//
//  BCarBuilderProtocol.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BCarBuilderProtocol <NSObject>

/** 建造汽车 */
- (instancetype)build;

@end

NS_ASSUME_NONNULL_END
