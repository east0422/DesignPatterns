//
//  AFFactoryManager.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//

#import "AFFactoryManager.h"

@implementation AFFactoryManager

+ (AFBaseFactory *)chooseFactoryWithBrand:(EAFFactoryType)factoryBrand {
    AFBaseFactory *factory = nil;
    switch (factoryBrand) {
        case EAFFactoryTypeApple:
            factory = [[AFAppleFactory alloc] init];
            break;
        case EAFFactoryTypeAndroid:
            factory = [[AFAndroidFactory alloc] init];
            break;
        default:
            break;
    }
    
    return factory;
}

@end
