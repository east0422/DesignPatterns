//
//  Buyer.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-11.
//  Copyright © 2021 east. All rights reserved.
//

#import "Buyer.h"

@implementation Buyer

- (void)buy:(NSString *)goods {
    if (self.agent != nil && [self.agent respondsToSelector:@selector(buy:withTip:)]) {
        [self.agent buy:goods withTip:20];
    }
}

@end
