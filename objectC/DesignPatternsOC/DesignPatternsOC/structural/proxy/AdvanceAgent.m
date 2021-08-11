//
//  AdvanceAgent.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-11.
//  Copyright © 2021 east. All rights reserved.
//

#import "AdvanceAgent.h"
#import "MethodNotFound.h"
#import <objc/runtime.h>

@implementation AdvanceAgent

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    if ([self.delegate respondsToSelector:aSelector]) {
        return [self.delegate methodSignatureForSelector:aSelector];
    } else {
        MethodNotFound *instance = [MethodNotFound shareInstance];
        return [instance methodSignatureForSelector:NSSelectorFromString(@"notFoundExcute:")];
    }
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    if ([self.delegate respondsToSelector:[invocation selector]]) {
        [invocation setTarget:self.delegate];
        [invocation invoke];
    } else {
        NSString *oldSelStr = NSStringFromSelector(invocation.selector);
        invocation.selector = NSSelectorFromString(@"notFoundExcute:");
        MethodNotFound *instance = [MethodNotFound shareInstance];
        [invocation setTarget:instance];
        NSArray *infos = nil;
        if (self.delegate) {
           infos = @[
               [NSString stringWithUTF8String:class_getName([self class])],
               oldSelStr,
               @""
           ];
        } else {
            infos = @[
                [NSString stringWithUTF8String:class_getName([self class])],
                oldSelStr
            ];
        }
        
        [invocation setArgument:&infos atIndex:2];
        [invocation invoke];
    }
}

@end
