//
//  BCarBuilder.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-24.
//  Copyright © 2020 east. All rights reserved.
//

#import "BCarBuilder.h"

@implementation BCarBuilder

- (void)buildAll {
    // 创建部件
    [self.engine build];
    [self.wheel build];
    [self.door build];
    [self.body build];
    
    // 模拟组装汽车
    NSMutableDictionary *carInfo = [NSMutableDictionary dictionary];
    carInfo[@"engine"] = [self.engine info];
    carInfo[@"wheel"] = [self.wheel info];
    carInfo[@"door"] = [self.door info];
    carInfo[@"body"] = [self.body info];
    self.info = carInfo;

}

@end
