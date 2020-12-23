//
//  AFAndroidFactory.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//

#import "AFAndroidFactory.h"

@implementation AFAndroidFactory

- (AFBasePhone *)createPhone {
    return [[AFAndroidPhone alloc] init];
}

- (AFBaseWatch *)createWatch {
    return [[AFAndroidWatch alloc] init];
}

- (AFBaseTV *)createTV {
    return [[AFAndroidTV alloc] init];
}

@end
