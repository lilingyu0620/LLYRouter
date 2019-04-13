//
//  LLYRouter.m
//  LLYRouter
//
//  Created by lly on 2019/4/11.
//  Copyright © 2019 lly. All rights reserved.
//

#import "LLYRouter.h"

@interface LLYRouter ()

@end

@implementation LLYRouter

+ (void)llyRouterWithRequest:(LLYRouterRequest *)request{
    [request resume];
}

@end
