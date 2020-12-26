//
//  ViewController.m
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-21.
//  Copyright © 2020 east. All rights reserved.
//

#import "ViewController.h"
// 简单工厂
#import "creational/simpleFactory/SFPhoneFactory.h"
// 抽象工厂
#import "creational/abstractFactory/AFFactoryManager.h"
// 单例
#import "creational/singleton/SSingletonUserInfo.h"
#import "creational/singleton/SSingletonSubUserInfo.h"
// 建造者
#import "creational/builder/BCarBuilder.h"
#import "creational/builder/bconcrete/BEngineOne.h"
#import "creational/builder/bconcrete/BWheelOne.h"
#import "creational/builder/bconcrete/BDoorOne.h"
#import "creational/builder/bconcrete/BBodyOne.h"

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
    
//    [self testSingleton];
    
    [self testBuilder];
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
    SSingletonUserInfo *userInfo = [SSingletonUserInfo defaultUserInfo];
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
    SSingletonUserInfo *userInfo = [SSingletonUserInfo defaultUserInfo];
    NSLog(@"%@", userInfo);
    NSLog(@"%@", [[SSingletonUserInfo alloc] init]);
    NSLog(@"%@", [userInfo copy]);
    NSLog(@"%@", [userInfo mutableCopy]);
    
    // 单例子类获取用户信息
//    SSingletonSubUserInfo *subUserInfo = [SSingletonSubUserInfo defaultUserInfo];
//    NSLog(@"%@", subUserInfo);
}

// 建造者
- (void)testBuilder {
    BCarBuilder *car = [[BCarBuilder alloc] init];
    car.engine = [[BEngineOne alloc] init];
    car.wheel = [[BWheelOne alloc] init];
    car.door = [[BDoorOne alloc] init];
    car.body = [[BBodyOne alloc] init];
    
    [car buildAll];
    
    NSLog(@"%@", car.info);
}

@end
