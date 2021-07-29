//
//  Tea+Species.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-29.
//  Copyright © 2021 east. All rights reserved.
//

#import "Tea+Species.h"
#import <objc/runtime.h>

static const NSString *speciesKey = @"species";

@implementation Tea (Species)

- (void)setWhichSpecies:(NSString *)whichSpecies {
    objc_setAssociatedObject(self, (__bridge const void * _Nonnull)speciesKey, whichSpecies, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)whichSpecies {
    return objc_getAssociatedObject(self, (__bridge const void * _Nonnull)(speciesKey));
}

@end
