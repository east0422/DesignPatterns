//
//  SFPhoneProtocol.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SFPhoneProtocol <NSObject>

/** 打电话 */
- (void)call;
/** 发短信 */
- (void)sendMsg;

@end

NS_ASSUME_NONNULL_END
