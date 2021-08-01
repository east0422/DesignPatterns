//
//  Telecontrol.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-31.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    powerOn,
    powerOff,
    volumeUp,
    volumeDown,
    prev,
    next,
    lookBack,
    castScreen
} OperationType;

@interface Telecontrol : NSObject

- (void)excute:(OperationType)operationType;

@end

NS_ASSUME_NONNULL_END
