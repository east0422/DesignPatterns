//
//  Context.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-6-30.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sort/SortStrategy.h"

NS_ASSUME_NONNULL_BEGIN

@interface Context : NSObject

@property(nonatomic, strong) id<SortStrategy> sortStrategy;

- (instancetype)initWithStrategy:(id<SortStrategy>)strategy;

- (NSArray *)sortWithArray:(NSArray *)arr;

@end

NS_ASSUME_NONNULL_END
