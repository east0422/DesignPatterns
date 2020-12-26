//
//  BCarBuilder.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "bprotocols/BCarBuilderProtocol.h"
#import "bprotocols/BEngineBuilderProtocol.h"
#import "bprotocols/BWheelBuilderProtocol.h"
#import "bprotocols/BDoorBuilderProtocol.h"
#import "bprotocols/BBodyBuilderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BCarBuilder : NSObject

/** 引擎制造 */
@property (nonatomic, strong) id<BCarBuilderProtocol, BEngineBuilderProtocol> engine;
/** 车轮制造 */
@property (nonatomic, strong) id<BCarBuilderProtocol, BWheelBuilderProtocol> wheel;
/** 车门制造 */
@property (nonatomic, strong) id<BCarBuilderProtocol, BDoorBuilderProtocol> door;
/** 车身制造 */
@property (nonatomic, strong) id<BCarBuilderProtocol, BBodyBuilderProtocol> body;

/** 汽车各部件信息 */
@property (nonatomic, strong) NSDictionary *info;

- (void)buildAll;

@end

NS_ASSUME_NONNULL_END
