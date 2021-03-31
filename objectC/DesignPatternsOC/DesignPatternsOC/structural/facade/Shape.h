//
//  Shape.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-4-1.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Shape <NSObject>

// 图形绘制
- (void)draw;

@end

NS_ASSUME_NONNULL_END
