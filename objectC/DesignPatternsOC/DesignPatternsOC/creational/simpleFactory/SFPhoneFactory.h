//
//  SFPhoneFactory.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//  手机制造厂

#import <Foundation/Foundation.h>
#import "SFBasePhone.h"
#import "SFApplePhone.h"
#import "SFAndroidPhone.h"
#import "SFHammerPhone.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    ESFPhoneTypeApple,
    ESFPhoneTypeAndroid,
    ESFPhoneTypeHammer,
} ESFPhoneType;

@interface SFPhoneFactory : NSObject

/** 依据传递类型制造满足SFPhotoProtocol的不同手机 */
+ (SFBasePhone<SFPhoneProtocol> *)createPhoneWithType:(ESFPhoneType)phoneType;

@end

NS_ASSUME_NONNULL_END
