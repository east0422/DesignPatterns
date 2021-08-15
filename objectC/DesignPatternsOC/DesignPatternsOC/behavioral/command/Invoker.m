//
//  Invoker.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-15.
//  Copyright © 2021 east. All rights reserved.
//

#import "Invoker.h"

@interface Invoker()

@property (nonatomic, strong) NSMutableArray *queue;

@end

@implementation Invoker

+ (instancetype)shareInstance {
    static Invoker *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[Invoker alloc] init];
        shareInstance.queue = [NSMutableArray array];
    });
    return shareInstance;
}

- (void)rollBack {
    id<CommandProtocol> lastCommand = self.queue.lastObject;
    if (lastCommand) {
        [lastCommand rollbackExcute];
        [self.queue removeLastObject];
    }
}

- (void)addAndExcute:(id<CommandProtocol>)command {
    if (command) {
        [self.queue addObject:command];
        [command excute];
    }
}

@end
