//
//  ShapeMaker.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-4-1.
//  Copyright © 2021 east. All rights reserved.
//

#import "ShapeMaker.h"

@interface ShapeMaker()

// 圆形对象
@property (nonatomic, strong) id<Shape> circle;
// 矩形对象
@property (nonatomic, strong) id<Shape> rectangle;
// 方形对象
@property (nonatomic, strong) id<Shape> square;

@end

@implementation ShapeMaker

+ (instancetype)shapeMaker {
    ShapeMaker *shapeMaker = [[[self class] alloc] init];
    shapeMaker.circle = [[Circle alloc] init];
    shapeMaker.rectangle = [[Rectangle alloc] init];
    shapeMaker.square = [[Square alloc] init];
    
    return shapeMaker;
}

- (void)drawCircle {
    [self.circle draw];
}

- (void)drawRectangle {
    [self.rectangle draw];
}

- (void)drawSquare {
    [self.square draw];
}

@end
