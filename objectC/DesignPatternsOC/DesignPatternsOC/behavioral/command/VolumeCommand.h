//
//  VolumeCommand.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-15.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    increase,
    decrease
} VolumeType;

@interface VolumeCommand : NSObject<CommandProtocol>

@property (nonatomic, assign) VolumeType volumeType;

@end

NS_ASSUME_NONNULL_END
