//
//  AFAppleFactory.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-23.
//  Copyright © 2020 east. All rights reserved.
//

#import "AFAppleFactory.h"

@implementation AFAppleFactory

- (AFBasePhone *)createPhone {
    return [[AFApplePhone alloc] init];
}

- (AFBaseWatch *)createWatch {
    return [[AFAppleWatch alloc] init];
}

- (AFBaseTV *)createTV {
    return [[AFAppleTV alloc] init];
}

@end
