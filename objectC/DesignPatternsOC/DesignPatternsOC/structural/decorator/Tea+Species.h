//
//  Tea+Species.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-29.
//  Copyright © 2021 east. All rights reserved.
//

#import "Tea.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tea (Species)

@property (nonatomic, copy) NSString *whichSpecies;

@end

NS_ASSUME_NONNULL_END
