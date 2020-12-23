//
//  AFBaseFactory.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../phone/AFBasePhone.h"
#import "../watch/AFBaseWatch.h"
#import "../tv/AFBaseTV.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFBaseFactory : NSObject

/** 制造手机 */
- (AFBasePhone *)createPhone;

/** 制造手表 */
- (AFBaseWatch *)createWatch;

/** 制造电视机 */
- (AFBaseTV *)createTV;

@end

NS_ASSUME_NONNULL_END
