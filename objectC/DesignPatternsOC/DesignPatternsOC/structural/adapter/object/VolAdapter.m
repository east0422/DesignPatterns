//
//  VolAdapter.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-4-25.
//  Copyright © 2021 east. All rights reserved.
//

#import "VolAdapter.h"
#import "Vol110.h"
#import "Vol220.h"

@interface VolAdapter ()

@property (nonatomic, strong) id curVol;

@end

@implementation VolAdapter

- (instancetype)initWithVoltage:(id)vol {
    if (self = [super init]) {
        _curVol = vol;
    }
    return self;
}

- (float)voltage {
    if ([_curVol isMemberOfClass:[Vol110 class]]) {
        return [_curVol voltage110];
    } else if ([_curVol isMemberOfClass:[Vol220 class]]) {
        return [_curVol voltage220];
    } else {
        return 0;
    }
}

@end
