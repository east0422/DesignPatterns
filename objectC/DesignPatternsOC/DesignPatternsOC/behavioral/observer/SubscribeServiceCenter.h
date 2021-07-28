//
//  SubscribeServiceCenter.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-27.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubscriptionServiceCenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface SubscribeServiceCenter : NSObject

+ (instancetype)defaultCenter;

- (void)createSubscribeKey:(NSString *)subscribeKey;

- (void)remoreSubscribeKey:(NSString *)subscribeKey;

- (void)removeAllSubscribeKey;

- (void)addSubscription:(id<SubscriptionServiceCenterProtocol>)subscription forKey:(NSString *)subscribeKey;

- (void)removeSubscription:(id<SubscriptionServiceCenterProtocol>)subscription forKey:(NSString *)subscribeKey;

- (void)removeAllSubscription;

- (void)sendMsg:(NSString *)msg forKey:(NSString *)subscribeKey;

@end

NS_ASSUME_NONNULL_END
