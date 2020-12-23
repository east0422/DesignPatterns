//
//  SFAndroidPhone.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//

#import "SFBasePhone.h"

NS_ASSUME_NONNULL_BEGIN

@interface SFAndroidPhone : SFBasePhone

/** 特有功能 */
- (void)jailbreak;

@end

NS_ASSUME_NONNULL_END
