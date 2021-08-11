//
//  Agent.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-11.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Agent : NSObject

// 代买商品收取小费
- (void)buy:(NSString *)goods withTip:(CGFloat)tip;

// 代卖商品收取小费
- (void)sell:(NSString *)goods withTip:(CGFloat)tip;

@end

NS_ASSUME_NONNULL_END
