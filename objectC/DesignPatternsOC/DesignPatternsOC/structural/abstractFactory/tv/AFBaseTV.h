//
//  AFBaseTV.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFBaseTV : NSObject

/** 打开 */
- (void)open;

/** 关闭 */
- (void)close;

/** 换频道 */
- (void)changeChannel;

@end

NS_ASSUME_NONNULL_END
