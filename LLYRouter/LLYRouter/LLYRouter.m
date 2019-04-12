//
//  LLYRouter.m
//  LLYRouter
//
//  Created by lly on 2019/4/11.
//  Copyright © 2019 lly. All rights reserved.
//

#import "LLYRouter.h"
#import "LLYRouterHandle.h"

@interface LLYRouter ()

@end

@implementation LLYRouter

+ (void)llyRouterWithSchemes:(NSString *)schemes method:(LLYRouterMethod)method param:(NSDictionary *)param{
    
    Class<LLYRouterHandle> class = NSClassFromString(schemes);
    if ([class conformsToProtocol:@protocol(LLYRouterHandle)]) {
        if (method == LLYRouterMethod_Push) {
            if ([class respondsToSelector:@selector(pushWithParament:)]) {
                [class pushWithParament:param];
            }
        }
        else if (method == LLYRouterMethod_Present){
            if ([class respondsToSelector:@selector(presentWithParament:)]) {
                [class presentWithParament:param];
            }
        }
    }
    
}

@end
