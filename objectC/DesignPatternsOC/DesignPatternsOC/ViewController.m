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
// 原型
#import "creational/prototype/PReceiptModel.h"
// 外观/门面
#import "structural/facade/ShapeMaker.h"
// 类适配器
#import "structural/adapter/class/ChargeAdapter110.h"
// 对象适配器
#import "structural/adapter/object/VolAdapter.h"
#import "structural/adapter/object/Vol110.h"
#import "structural/adapter/object/Vol220.h"
// 策略
#import "behavioral/strategy/Context.h"
#import "behavioral/strategy/sort/SortStrategy.h"
#import "behavioral/strategy/sort/BubbleSort.h"
#import "behavioral/strategy/sort/SelectionSort.h"
#import "behavioral/strategy/sort/InsertionSort.h"
#import "behavioral/strategy/sort/QuickSort.h"
// 观察者
#import "behavioral/observer/SubscriptionServiceCenterProtocol.h"
#import "behavioral/observer/SubscribeServiceCenter.h"
// 装饰者
#import "structural/decorator/TeaDecorator.h"
#import "structural/decorator/Tea+Species.h"
// 桥接器
#import "structural/bridge/KangjiaTV.h"
#import "structural/bridge/XiaoMiTV.h"
#import "structural/bridge/KangjiaTeleControl.h"
#import "structural/bridge/XiaomiTeleControl.h"
// 代理
#import "structural/proxy/Buyer.h"
#import "structural/proxy/Seller.h"
#import "structural/proxy/Agent.h"
#import "structural/proxy/AdvanceMaleAgent.h"
#import "structural/proxy/AdvanceAgentProxy.h"
// 备忘录
#import "behavioral/memento/MementoCenter.h"
#import "behavioral/memento/Schedule.h"
#import "behavioral/memento/NSObject+MementoCenter.h"
// 命令
#import "behavioral/command/Invoker.h"
#import "behavioral/command/Receiver.h"
#import "behavioral/command/VolumeCommand.h"

@interface ViewController () <SubscriptionServiceCenterProtocol, AdvanceAgentProxy>

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
    
//    [self testBuilder];
    
//    [self testPrototype];
    
//    [self testFacade];
    
//    [self testClassAdapter];
//    [self testObjectAdapter];
    
//    [self testStrategy];
    
//    [self testObserver];
    
//    [self testDecorator];
    
//    [self testBridge];
    
//    [self testProxy];
    
//    [self testMemento];
    
    [self testCommand];
    
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

// 原型
- (void)testPrototype {
    PReceiptModel *receiptOne = [[[PReceiptModel class] alloc] init];
    receiptOne.payer = @"张三";
    receiptOne.payee = @"李四";
    receiptOne.date = @"2000-12-01";
    receiptOne.amount = 1000.f;
    receiptOne.content = @"还款";
    
    PReceiptModel *receiptTwo = [receiptOne clone];
    receiptTwo.payer = @"王五";
    receiptTwo.date = @"2010-01-01";
    receiptTwo.amount = 1999.9;
    
    NSLog(@"\none: %@\ntwo:%@", receiptOne, receiptTwo);
}

// 外观/门面
- (void)testFacade {
    ShapeMaker *shape = [ShapeMaker shapeMaker];
    [shape drawCircle];
    [shape drawRectangle];
    [shape drawSquare];
}

// 类适配器
- (void)testClassAdapter {
    ChargeAdapter110 *chargeAdapter110 = [[ChargeAdapter110 alloc] init];
    float voltage = [chargeAdapter110 convertToV220];
    NSLog(@"voltage:%.2f", voltage);
}

// 对象适配器
- (void)testObjectAdapter {
    id vol110 = [[Vol110 alloc] init];
    id vol220 = [[Vol220 alloc] init];
    
    VolAdapter *volAdapter1 = [[VolAdapter alloc] initWithVoltage:vol110];
    VolAdapter *volAdapter2 = [[VolAdapter alloc] initWithVoltage:vol220];
    NSLog(@"vol110:%.2f, vol220:%.2f", [volAdapter1 voltage], [volAdapter2 voltage]);
}

// 策略
- (void)testStrategy {
    NSArray *arr = @[@1, @8, @4, @90, @5, @100, @2];
    // 冒泡
    [[[Context alloc] initWithStrategy:[BubbleSort new]] sortWithArray: arr];
    // 选择
    [[[Context alloc] initWithStrategy:[SelectionSort new]] sortWithArray: arr];
    // 插入
    [[[Context alloc] initWithStrategy:[InsertionSort new]] sortWithArray:arr];
    // 快速
    [[[Context alloc] initWithStrategy:[QuickSort new]] sortWithArray:arr];

}

// 观察者
- (void)testObserver {
    NSString *subscribeKey = @"subscribeKey";
    SubscribeServiceCenter *defaultCenter = [SubscribeServiceCenter defaultCenter];
    [defaultCenter createSubscribeKey:subscribeKey];
    [defaultCenter addSubscription:self forKey:subscribeKey];
    
    [defaultCenter sendMsg:@"hello" forKey:subscribeKey];
}

- (void)subscribeObj:(id)obj forKey:(NSString *)key {
    NSLog(@"obj:%@, key: %@", obj, key);
}

// 装饰者
- (void)testDecorator {
    TeaDecorator *teaDecorator = [[TeaDecorator alloc] init];
    [teaDecorator drink];
    
    Tea *tea = [[Tea alloc] init];
    tea.whichSpecies = @"red tea";
    NSLog(@"%@", tea.whichSpecies);
    // 不需要引入Tea+Temperature分类，只要Build Phases - Compile Sources中有分类 分类中同名方法就会覆盖原类方法
    [tea cook];
}

// 桥接器
- (void)testBridge {
    KangjiaTV *kjTV = [[KangjiaTV alloc] init];
    KangjiaTeleControl *kjTeleControl = [[KangjiaTeleControl alloc] init];
    kjTV.telecontrol = kjTeleControl;
    [kjTV executeCommand:powerOn];
    [kjTV executeLookBack];
    
    XiaoMiTV *xmTV = [[XiaoMiTV alloc] init];
    xmTV.telecontrol = [[XiaomiTeleControl alloc] init];
    [xmTV executeCommand:powerOn];
    [xmTV executeCastScreen];
}

// 代理
- (void)testProxy {
    Agent *agent = [[Agent alloc] init];
    Buyer *buyer = [[Buyer alloc] init];
    buyer.agent = agent;
    [buyer buy: @"十斤🍎"];

    Seller *seller = [[Seller alloc] init];
    seller.agent = agent;
    [seller sell:@"十斤🍎"];
    
    AdvanceMaleAgent *advanceMaleAgent = [AdvanceMaleAgent alloc];
    advanceMaleAgent.delegate = self;
    
    [advanceMaleAgent call];
    [advanceMaleAgent cleanUp];
    [advanceMaleAgent buyVegetableAndCook:@"青椒，肉丝" forMonthSalary:10000];
}

- (void)call {
    NSLog(@"call %@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)cleanUp {
    NSLog(@"proxy %@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

// 备忘录
- (void)testMemento {
    Schedule *schedule = [[Schedule alloc] init];
    NSDate *now = [NSDate now];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    schedule.date = [dateFormatter stringFromDate:now];
    schedule.events = @"上班";
    NSLog(@"original：%@", schedule); // 上班
    
    NSString *key1 = @"mementoKey1";
    schedule.events = @"休息";
    NSLog(@"new1：%@", schedule); // 休息
//    [schedule recoveryFromState:[MementoCenter mementoObjectWithKey:key1]];
    [schedule recoveryStateWithKey: key1];
    NSLog(@"recovery1：%@", schedule); // 上一次保存值
    schedule.events = @"健身";
    NSLog(@"new2：%@ and save", schedule); // 健身
//    [MementoCenter saveMementoObject:[schedule currentState] withKey:key1];
    [schedule saveStateWithKey:key1];
    schedule.events = @"吃饭";
    NSLog(@"new 3：%@ and recovery", schedule); // 吃饭
//    [schedule recoveryFromState:[MementoCenter mementoObjectWithKey:key1]];
    [schedule recoveryStateWithKey:key1];
    NSLog(@"recovery2：%@", schedule); // 健身
    schedule.events = @"上班";
//    [MementoCenter saveMementoObject:[schedule currentState] withKey:key1];
    [schedule saveStateWithKey:key1];
}

// 命令
- (void)testCommand {
    VolumeCommand *volCommand = [[VolumeCommand alloc] initReceiver:[[Receiver alloc] init]];
    Invoker *invoker = [Invoker shareInstance];
    [invoker addAndExcute:volCommand];
    [invoker rollBack];
}

@end
