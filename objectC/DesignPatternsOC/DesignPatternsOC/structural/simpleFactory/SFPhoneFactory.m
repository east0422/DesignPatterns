//
//  SFPhoneFactory.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//

#import "SFPhoneFactory.h"

@implementation SFPhoneFactory

+ (SFBasePhone<SFPhoneProtocol> *)createPhoneWithType:(ESFPhoneType)phoneType {
    SFBasePhone *basePhone = nil;
    switch (phoneType) {
        case ESFPhoneTypeApple:
            basePhone = [[SFApplePhone alloc] init];
            break;
        case ESFPhoneTypeAndroid:
            basePhone = [[SFAndroidPhone alloc] init];
            break;
        case ESFPhoneTypeHammer:
            basePhone = [[SFHammerPhone alloc] init];
            break;
        default:
            break;
    }
    
    return basePhone;
}

@end
