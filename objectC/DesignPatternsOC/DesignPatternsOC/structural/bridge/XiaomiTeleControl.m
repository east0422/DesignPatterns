//
//  XiaomiTeleControl.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-31.
//  Copyright © 2021 east. All rights reserved.
//

#import "XiaomiTeleControl.h"

@implementation XiaomiTeleControl

- (void)excute:(OperationType)operationType {
    switch (operationType) {
        case powerOn:
            NSLog(@"xm power on: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case powerOff:
            NSLog(@"xm power off: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case volumeUp:
            NSLog(@"xm volume up: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case volumeDown:
            NSLog(@"xm volume down: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case prev:
            NSLog(@"xm pre: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case next:
            NSLog(@"xm next: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        case castScreen:
            NSLog(@"xm castscreen: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
        default:
            NSLog(@"none: %@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
            break;
    }
}

@end
