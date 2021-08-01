//
//  TV.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-31.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Telecontrol.h"

NS_ASSUME_NONNULL_BEGIN

@interface TV : NSObject

@property (nonatomic, strong) Telecontrol *telecontrol;

- (void)executeCommand:(OperationType)operationType;

@end

NS_ASSUME_NONNULL_END
