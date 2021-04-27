//
//  VolAdapter.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-4-25.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VolProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface VolAdapter : NSObject <VolProtocol>

- (instancetype)initWithVoltage:(id)vol;

@end

NS_ASSUME_NONNULL_END
