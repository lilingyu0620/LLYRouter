//
//  ViewController.m
//  LLYRouter
//
//  Created by lly on 2019/4/11.
//  Copyright © 2019 lly. All rights reserved.
//

#import "ViewController.h"
#import "LLYRouter.h"

@interface ViewController ()

@property (nonatomic, strong) LLYRouter *llyRouter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.llyRouter = [[LLYRouter alloc]init];
}

- (IBAction)push:(id)sender {
    [self.llyRouter llyRouterWithSchemes:@"LLYTestViewController" method:LLYRouterMethod_Push param:@{@"userId":@"123",@"nickName":@"lly"}];
}
- (IBAction)present:(id)sender {
    [self.llyRouter llyRouterWithSchemes:@"LLYTestViewController" method:LLYRouterMethod_Present param:@{@"userId":@"123",@"nickName":@"lly"}];
}

@end
