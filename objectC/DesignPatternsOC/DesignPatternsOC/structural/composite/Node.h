//
//  Node.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-15.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject

@property (nonatomic, copy) NSString *nodeName;

@property (nonatomic, strong, readonly) NSMutableArray<Node *> *childNodes;

+ (instancetype)initNodeWithName:(NSString *)name;

- (void)addNode:(Node *)node;

- (void)removeNode:(Node *)node;

- (instancetype)nodeAtIndex:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
