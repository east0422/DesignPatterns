//
//  SubscribeServiceCenter.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-7-27.
//  Copyright © 2021 east. All rights reserved.
//

#import "SubscribeServiceCenter.h"

static NSMutableDictionary *subscribeDics = nil;
static SubscribeServiceCenter *subscribeServiceCenter;

@implementation SubscribeServiceCenter

+ (void)initialize
{
    if (self == [SubscribeServiceCenter class]) {
        subscribeDics = [NSMutableDictionary dictionary];
    }
}

+ (instancetype)defaultCenter {
    static dispatch_once_t oneToken;
    dispatch_once(&oneToken, ^{
        subscribeServiceCenter = [[SubscribeServiceCenter alloc] init];

    });
    return subscribeServiceCenter;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    if (subscribeServiceCenter == nil) {
        subscribeServiceCenter = [super allocWithZone:zone];
    }
    return subscribeServiceCenter;
}

-(id)copyWithZone:(NSZone *)zone{
    return self;
}

- (void)createSubscribeKey:(NSString *)subscribeKey {
    if (subscribeKey != nil) {
        NSHashTable *hashTable = [self subscribeForKey:subscribeKey];
        if (hashTable == nil) {
            hashTable = [NSHashTable weakObjectsHashTable];
            [subscribeDics setObject:hashTable forKey:subscribeKey];
        }
    }
}

- (void)remoreSubscribeKey:(NSString *)subscribeKey {
    if (subscribeKey != nil) {
        NSHashTable *hashTable = [self subscribeForKey:subscribeKey];
        [subscribeDics removeObjectForKey:hashTable];
    }
}

- (void)removeAllSubscribeKey {
    NSEnumerator *hashTablekeys = [subscribeDics keyEnumerator];
    NSHashTable *hashTable;
     
    while (hashTable = [hashTablekeys nextObject]) {
        [subscribeDics removeObjectForKey:hashTable];
    }
}

- (void)addSubscription:(id<SubscriptionServiceCenterProtocol>)subscription forKey:(NSString *)subscribeKey {
    if (subscription != nil || subscribeKey != nil) {
        NSHashTable *hashTable = [subscribeDics objectForKey:subscribeKey];
        [hashTable addObject:subscription];
    }
}

- (void)removeSubscription:(id<SubscriptionServiceCenterProtocol>)subscription forKey:(NSString *)subscribeKey {
    if (subscribeKey) {
        NSHashTable *hashTable = [subscribeDics objectForKey:subscribeKey];
        [hashTable removeObject:subscription];
    }
}

- (void)removeAllSubscription {
    NSEnumerator *hashTablekeys = [subscribeDics keyEnumerator];
    NSHashTable *hashTable = nil;
     
    while (hashTable = [hashTablekeys nextObject]) {
        [hashTable removeAllObjects];
    }
}

- (NSHashTable *)subscribeForKey:(NSString *)key {
    return [subscribeDics objectForKey:key];
}

- (void)sendMsg:(NSString *)msg forKey:(NSString *)subscribeKey {
    if (subscribeKey != nil) {
        NSHashTable *hashTable = [subscribeDics objectForKey:subscribeKey];
        NSEnumerator *subscriptions = [hashTable objectEnumerator];
        id<SubscriptionServiceCenterProtocol> subscription = nil;
        while (subscription = [subscriptions nextObject]) {
            if ([subscription respondsToSelector:@selector(subscribeObj:forKey:)]) {
                [subscription subscribeObj:msg forKey:subscribeKey];
            }
        }
    }
}

@end
