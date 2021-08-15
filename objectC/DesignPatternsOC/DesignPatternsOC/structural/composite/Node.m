//
//  Node.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-15.
//  Copyright © 2021 east. All rights reserved.
//

#import "Node.h"

@interface Node ()

@property (nonatomic, strong) NSMutableArray<Node *> *childNodes;

@end

@implementation Node

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.childNodes = [NSMutableArray array];
    }
    return self;
}

+ (instancetype)initNodeWithName:(NSString *)name {
    Node *node = [[[self class] alloc] init];
    node.nodeName = name;
    return node;
}

- (void)addNode:(Node *)node {
    [self.childNodes addObject:node];
}

- (void)removeNode:(Node *)node {
    [self.childNodes removeObject:node];
}

- (instancetype)nodeAtIndex:(NSInteger)index {
    if (self.childNodes.count > index) {
        return [self.childNodes objectAtIndex:index];
    } else {
        return nil;
    }
}

- (NSString *)description
{
    if (self.childNodes) {
        return [NSString stringWithFormat:@"%@ {%@}", self.nodeName, self.childNodes.description];
    } else {
        return [NSString stringWithFormat:@"%@", self.nodeName];
    }
}

@end
