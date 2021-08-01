//
//  TV.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-31.
//  Copyright © 2021 east. All rights reserved.
//

#import "TV.h"

@implementation TV

- (void)executeCommand:(OperationType)operationType {
    if (self.telecontrol != nil && [self.telecontrol respondsToSelector:@selector(excute:)]) {
        [self.telecontrol excute:operationType];
    }
}

@end
