//
//  Seller.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-11.
//  Copyright © 2021 east. All rights reserved.
//

#import "Seller.h"

@implementation Seller

- (void)sell:(NSString *)goods {
    if (self.agent != nil && [self.agent respondsToSelector:@selector(sell:withTip:)]) {
        [self.agent sell:goods withTip:10];
    }
}

@end
