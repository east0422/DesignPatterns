//
//  BBodyOne.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../bprotocols/BCarBuilderProtocol.h"
#import "../bprotocols/BBodyBuilderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BBodyOne : NSObject <BCarBuilderProtocol, BBodyBuilderProtocol>

/** 座位数 */
@property (nonatomic, assign) NSUInteger seatNum;

- (instancetype)initWithSeatNum:(NSUInteger)num;

@end

NS_ASSUME_NONNULL_END
