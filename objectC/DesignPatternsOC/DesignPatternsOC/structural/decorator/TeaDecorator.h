//
//  TeaDecorator.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-29.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tea.h"

NS_ASSUME_NONNULL_BEGIN

@interface TeaDecorator : NSObject

@property (nonatomic, strong) Tea *tea;

- (void)drink;

@end

NS_ASSUME_NONNULL_END
