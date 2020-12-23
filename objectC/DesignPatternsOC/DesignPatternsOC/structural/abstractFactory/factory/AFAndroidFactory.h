//
//  AFAndroidFactory.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//

#import "AFBaseFactory.h"
#import "../phone/AFAndroidPhone.h"
#import "../watch/AFAndroidWatch.h"
#import "../tv/AFAndroidTV.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFAndroidFactory : AFBaseFactory

@end

NS_ASSUME_NONNULL_END
