//
//  KangjiaTeleControl.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-31.
//  Copyright © 2021 east. All rights reserved.
//

#import "KangjiaTeleControl.h"

@implementation KangjiaTeleControl

- (void)excute:(OperationType)operationType {
    switch (operationType) {
        case powerOn:
            NSLog(@"kj power on: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case powerOff:
            NSLog(@"kj power off: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case volumeUp:
            NSLog(@"kj volume up: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case volumeDown:
            NSLog(@"kj volume down: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case prev:
            NSLog(@"kj pre: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case next:
            NSLog(@"kj next: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case lookBack:
            NSLog(@"kj lookback: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        default:
            NSLog(@"none: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
    }
}

@end
