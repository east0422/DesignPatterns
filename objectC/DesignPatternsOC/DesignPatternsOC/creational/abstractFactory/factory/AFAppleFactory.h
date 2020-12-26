//
//  AFAppleFactory.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//

#import "AFBaseFactory.h"
#import "../phone/AFApplePhone.h"
#import "../watch/AFAppleWatch.h"
#import "../tv/AFAppleTV.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFAppleFactory : AFBaseFactory

@end

NS_ASSUME_NONNULL_END
