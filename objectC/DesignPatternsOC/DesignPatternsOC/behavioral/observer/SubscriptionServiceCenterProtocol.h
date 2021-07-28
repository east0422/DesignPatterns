//
//  SubscriptionServiceCenterProtocol.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-27.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SubscriptionServiceCenterProtocol <NSObject>

@required
- (void)subscribeObj:(id)obj forKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
