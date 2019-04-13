//
//  ViewController.m
//  LLYRouter
//
//  Created by lly on 2019/4/11.
//  Copyright © 2019 lly. All rights reserved.
//

#import "ViewController.h"
#import "LLYRouter.h"
#import "LLYRouterRequest.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)push:(id)sender {
    LLYRouterRequest *request = [[LLYRouterRequest alloc]initWithSchemes:@"LLYTestViewController" method:LLYRouterMethod_Push parameters:@{@"userId":@"123",@"nickName":@"lly"}];
    [LLYRouter llyRouterWithRequest:request];
}
- (IBAction)present:(id)sender {
    LLYRouterRequest *request = [[LLYRouterRequest alloc]initWithSchemes:@"LLYTestViewController" method:LLYRouterMethod_Present parameters:@{@"userId":@"123",@"nickName":@"lly"}];
    [LLYRouter llyRouterWithRequest:request];
}

@end
