//
//  Receiver.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-15.
//  Copyright © 2021 east. All rights reserved.
//

#import "Receiver.h"

@implementation Receiver

- (void)addVolume {
    NSLog(@"%@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)decreaseVolume {
    NSLog(@"%@, %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

@end
