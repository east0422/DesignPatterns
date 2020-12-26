
//
//  BDoorBuilderProtocol.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BDoorBuilderProtocol <NSObject>

/** 颜色 */
- (void)color:(UIColor *)color;
/** 信息 */
- (NSString *)info;

@end

NS_ASSUME_NONNULL_END
