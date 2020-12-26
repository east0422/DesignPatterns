//
//  BDoorOne.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../bprotocols/BCarBuilderProtocol.h"
#import "../bprotocols/BDoorBuilderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BDoorOne : NSObject <BCarBuilderProtocol, BDoorBuilderProtocol>

/** 颜色  */
@property (nonatomic, strong) UIColor *doorColor;

- (instancetype)initWithColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
