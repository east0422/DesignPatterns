//
//  Telecontrol.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-31.
//  Copyright © 2021 east. All rights reserved.
//

#import "Telecontrol.h"

@implementation Telecontrol

- (void)excute:(OperationType)operationType {
    switch (operationType) {
        case powerOn:
            NSLog(@"power on: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case powerOff:
            NSLog(@"power off: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case volumeUp:
            NSLog(@"volume up: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case volumeDown:
            NSLog(@"volume down: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case prev:
            NSLog(@"pre: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case next:
            NSLog(@"next: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case lookBack:
            NSLog(@"lookback: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case castScreen:
            NSLog(@"cast screen: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        default:
            NSLog(@"none: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
    }
}

@end
