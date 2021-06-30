//
//  SortStrategy.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-6-30.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SortStrategy <NSObject>

- (NSArray *)sortWithArray:(NSArray *)arr;

@end

NS_ASSUME_NONNULL_END
