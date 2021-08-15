//
//  VolumeCommand.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-15.
//  Copyright © 2021 east. All rights reserved.
//

#import "VolumeCommand.h"

@interface VolumeCommand ()

@property (nonatomic, strong) Receiver *receiver;

@end

@implementation VolumeCommand

- (instancetype)initReceiver:(Receiver *)receiver {
    self = [super init];
    self.receiver = receiver;
    self.volumeType = increase;
    return self;
}

- (void)excute {
    if (self.volumeType == increase) {
        [self.receiver addVolume];
    } else if (self.volumeType == decrease) {
        [self.receiver decreaseVolume];
    }
}

- (void)rollbackExcute {
    if (self.volumeType == increase) {
        [self.receiver decreaseVolume];
    } else if (self.volumeType == decrease) {
        [self.receiver addVolume];
    }
}

@end
