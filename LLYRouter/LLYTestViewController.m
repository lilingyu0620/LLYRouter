//
//  LLYTestViewController.m
//  LLYRouter
//
//  Created by lly on 2019/4/11.
//  Copyright © 2019 lly. All rights reserved.
//

#import "LLYTestViewController.h"
#import "LLYRouterHandle.h"
#import <objc/runtime.h>

@interface LLYTestViewController ()<LLYRouterHandle>

@property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *nickName;

@end

@implementation LLYTestViewController

- (instancetype)initWithUserId:(NSString *)userId nickName:(NSString *)nickName{
    
    self = [super init];
    if (self) {
        self.userId = userId;
        self.nickName = nickName;
    }
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
}

#pragma mark - LLYRouterHandle

+ (void)pushWithParament:(NSDictionary *)parament{
    
    LLYTestViewController *testVc = [[LLYTestViewController alloc]initWithUserId:parament[@"userId"] nickName:parament[@"nickName"]];    
//    unsigned int outCount;
//    Ivar * ivars = class_copyIvarList([testVc class], &outCount);
//    for (int i = 0; i < outCount; i ++) {
//        Ivar ivar = ivars[i];
//        NSString * ivarStr = [NSString stringWithUTF8String:ivar_getName(ivar)];
//        NSString *key = [ivarStr substringFromIndex:1];//跳过下划线
//        id value = [parament objectForKey:key];
//        if (value) {
//            object_setIvar(testVc, ivar, value);
//        }
//    }
    testVc.hidesBottomBarWhenPushed = YES;
    [(UINavigationController *)[UIApplication sharedApplication].delegate.window.rootViewController pushViewController:testVc animated:YES];
}


+ (void)presentWithParament:(NSDictionary *)parament{
    
    LLYTestViewController *testVc = [[LLYTestViewController alloc]init];
    [[UIApplication sharedApplication].delegate.window.rootViewController presentViewController:testVc animated:YES completion:nil];
    
}

@end
