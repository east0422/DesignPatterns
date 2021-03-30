//
//  PReceiptModel.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-28.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PCopyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface PReceiptModel : NSObject<PCopyProtocol>

/** 付款人 */
@property (nonatomic, strong) NSString *payer;
/** 日期 */
@property (nonatomic, strong) NSString *date;
/** 收款人 */
@property (nonatomic, strong) NSString *payee;
/** 金额 */
@property (nonatomic, assign) CGFloat amount;
/** 事由 */
@property (nonatomic, strong) NSString *content;

@end

NS_ASSUME_NONNULL_END
