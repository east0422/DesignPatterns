//
//  Agent.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-11.
//  Copyright © 2021 east. All rights reserved.
//

#import "Agent.h"

@implementation Agent

- (void)buy:(NSString *)goods withTip:(CGFloat)tip {
    NSLog(@"代买：%@，收取小费： %f", goods, tip);
}

-(void)sell:(NSString *)goods withTip:(CGFloat)tip {
    NSLog(@"代卖： %@，收取小费: %f", goods, tip);
}

@end
