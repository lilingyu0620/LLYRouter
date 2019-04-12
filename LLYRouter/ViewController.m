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


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)push:(id)sender {
    [LLYRouter llyRouterWithSchemes:@"LLYTestViewController" method:LLYRouterMethod_Push param:@{@"userId":@"123",@"nickName":@"lly"}];
}
- (IBAction)present:(id)sender {
    [LLYRouter llyRouterWithSchemes:@"LLYTestViewController" method:LLYRouterMethod_Present param:@{@"userId":@"123",@"nickName":@"lly"}];
}

@end
