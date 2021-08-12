//
//  MementoCenter.m
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-12.
//  Copyright © 2021 east. All rights reserved.
//

#import "MementoCenter.h"
#import "Schedule.h"

@implementation MementoCenter

+ (void)saveMementoObject:(id<MementoCenterProtocol>)mementoObj withKey:(NSString *)key {
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:mementoObj requiringSecureCoding:YES error:nil];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (id)mementoObjectWithKey:(NSString *)key {
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    NSError *error = nil;
    // 可添加遵循MementoCenterProtocol协议的类或者使用具体基类或根基类NSObject
    NSSet *clss = [NSSet setWithObjects:[Schedule class], nil];
    id mementoObj = [NSKeyedUnarchiver unarchivedObjectOfClasses:clss fromData:data error:&error];
    if (error) {
       NSLog(@"error: %@", error);
        return nil;
    }
    
    return mementoObj;
}

@end
