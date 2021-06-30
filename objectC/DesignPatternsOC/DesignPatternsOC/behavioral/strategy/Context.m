//
//  Context.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-6-30.
//  Copyright © 2021 east. All rights reserved.
//

#import "Context.h"

@implementation Context

- (instancetype)initWithStrategy:(id<SortStrategy>)strategy {
    self = [super init];
    if (self) {
        self.sortStrategy = strategy;
    }
    return self;
}

- (NSArray *)sortWithArray:(NSArray *)arr {
    return [self.sortStrategy sortWithArray:arr];
}

@end
