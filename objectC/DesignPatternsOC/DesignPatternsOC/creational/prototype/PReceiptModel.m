//
//  PReceiptModel.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-28.
//  Copyright © 2020 east. All rights reserved.
//

#import "PReceiptModel.h"

@implementation PReceiptModel

- (instancetype)clone {
    PReceiptModel *receipt = [[[self class] alloc] init];

    // 可使用runtime遍历
    receipt.payer = self.payer;
    receipt.payee = self.payee;
    receipt.date = self.date;
    receipt.amount = self.amount;
    receipt.content = self.content;

    return receipt;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%p: %@,%@,%@,%@,%f", self, self.payer, self.payee, self.content, self.date, self.amount];
}

@end
