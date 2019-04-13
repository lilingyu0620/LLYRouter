//
//  LLYRouterRequest.m
//  LLYRouter
//
//  Created by lly on 2019/4/13.
//  Copyright © 2019 lly. All rights reserved.
//

#import "LLYRouterRequest.h"
#import "LLYRouterHandle.h"

@interface LLYRouterRequest ()

@property (nonatomic, copy) NSString *schemes;
@property (nonatomic, assign) LLYRouterMethod method;
@property (nonatomic, strong) NSDictionary *parameters;

@end

@implementation LLYRouterRequest

- (instancetype)initWithSchemes:(NSString *)schemes method:(LLYRouterMethod)method parameters:(NSDictionary *)parameters{
    
    self = [super init];
    if (self) {
        self.schemes = schemes;
        self.method = method;
        self.parameters = parameters;
    }
    return self;
    
}

- (void)resume{
    
    Class<LLYRouterHandle> class = NSClassFromString(self.schemes);
    if ([class conformsToProtocol:@protocol(LLYRouterHandle)]) {
        if (self.method == LLYRouterMethod_Push) {
            if ([class respondsToSelector:@selector(pushWithParament:)]) {
                [class pushWithParament:self.parameters];
            }
        }
        else if (self.method == LLYRouterMethod_Present){
            if ([class respondsToSelector:@selector(presentWithParament:)]) {
                [class presentWithParament:self.parameters];
            }
        }
    }
    
}

@end
