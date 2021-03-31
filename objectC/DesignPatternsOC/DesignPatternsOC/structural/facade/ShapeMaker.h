//
//  ShapeMaker.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-4-1.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "Circle.h"
#import "Rectangle.h"
#import "Square.h"

NS_ASSUME_NONNULL_BEGIN

@interface ShapeMaker : NSObject

// 实例化对象
+ (instancetype)shapeMaker;

// 绘制圆形
- (void)drawCircle;

// 绘制矩形
- (void)drawRectangle;

// 绘制方形
- (void)drawSquare;

@end

NS_ASSUME_NONNULL_END
