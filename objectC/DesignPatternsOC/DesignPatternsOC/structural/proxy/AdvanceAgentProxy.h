//
//  AdvanceAgentProxy.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-11.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AdvanceAgentProxy <NSObject>

@optional
- (void)buy:(NSString *)goods withTip:(CGFloat)tip;
- (void)sell:(NSString *)goods withTip:(CGFloat)tip;

@optional
- (void)cleanUp;
- (void)call;
- (void)buyVegetableAndCook:(NSString *)goods forMonthSalary:(CGFloat)salary;
- (void)buy:(NSString *)goods withTip:(CGFloat)tip forBestChoice:(NSString *)choice;
- (void)sell:(NSString *)goods withTip:(CGFloat)tip forBestChoice:(NSString *)choice;

@end

NS_ASSUME_NONNULL_END
