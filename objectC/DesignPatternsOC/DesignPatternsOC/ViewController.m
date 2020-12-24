//
//  ViewController.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-21.
//  Copyright © 2020 east. All rights reserved.
//

#import "ViewController.h"
#import "structural/simpleFactory/SFPhoneFactory.h"
#import "structural/abstractFactory/AFFactoryManager.h"
#import "structural/singleton/SingletonUserInfo.h"
#import "structural/singleton/SingletonSubUserInfo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // NSNumber也是一种工厂模式，只是它生产的产品是数字类型可以相互转换
//    NSLog(@"%@", [[NSNumber alloc] init]); // (null)
//    NSNumber *floatN = [NSNumber numberWithFloat:100.99f];
//    NSLog(@"%c", [floatN charValue]); // d
//    [self testSimpleFactory];
    
//    [self testAbstractFactory];
    
    [self testSingleton];
}

// 简单工厂
- (void)testSimpleFactory {
    // 常规功能
    SFBasePhone *phone = [SFPhoneFactory createPhoneWithType:(ESFPhoneTypeAndroid)];
    [phone call];
    
    // 特殊产品特定功能
    SFHammerPhone *hammerPhone = (SFHammerPhone *)[SFPhoneFactory createPhoneWithType:(ESFPhoneTypeHammer)];
    [hammerPhone hit];
}

// 抽象工厂
- (void)testAbstractFactory {
    // 选择工厂
    AFBaseFactory *factory = [AFFactoryManager chooseFactoryWithBrand:(EAFFactoryTypeAndroid)];
    // 创建产品
    AFBasePhone *phone = [factory createPhone];
    [phone call];
    AFBaseWatch *watch = [factory createWatch];
    [watch charge];
    AFBaseTV *tv = [factory createTV];
    [tv open];
}

// 单例初始化用户信息
- (void)initUserInfo {
    SingletonUserInfo *userInfo = [SingletonUserInfo defaultUserInfo];
    userInfo.name = @"张三";
    userInfo.age = [NSNumber numberWithInt:32];
    userInfo.sex = SexFemale;
    NSLog(@"%@", userInfo);
}

// 单例
- (void)testSingleton {
    // 常见单例
//    [UIApplication sharedApplication];
//    [NSNotificationCenter defaultCenter];
//    [NSUserDefaults standardUserDefaults];
//    [NSFileManager defaultManager];
    
    // 单例初始化用户信息
    [self initUserInfo];
    // 单例获取用户信息
    SingletonUserInfo *userInfo = [SingletonUserInfo defaultUserInfo];
    NSLog(@"%@", userInfo);
    NSLog(@"%@", [[SingletonUserInfo alloc] init]);
    NSLog(@"%@", [userInfo copy]);
    NSLog(@"%@", [userInfo mutableCopy]);
    
    // 单例子类获取用户信息
//    SingletonSubUserInfo *subUserInfo = [SingletonSubUserInfo defaultUserInfo];
//    NSLog(@"%@", subUserInfo);
}

@end
