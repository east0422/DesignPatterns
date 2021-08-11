//
//  Seller.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-11.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Agent.h"

NS_ASSUME_NONNULL_BEGIN

@interface Seller : NSObject

@property (nonatomic, weak) Agent *agent;

// 卖东西
- (void)sell: (NSString *)goods;

@end

NS_ASSUME_NONNULL_END
