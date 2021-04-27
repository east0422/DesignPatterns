//
//  ChargeAdapter110.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-4-25.
//  Copyright © 2021 east. All rights reserved.
//

#import "ChargeAdapter.h"
#import "Voltage220Protocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ChargeAdapter110 : ChargeAdapter <Voltage220Protocol>

@end

NS_ASSUME_NONNULL_END
