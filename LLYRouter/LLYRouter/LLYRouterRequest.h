//
//  LLYRouterRequest.h
//  LLYRouter
//
//  Created by lly on 2019/4/13.
//  Copyright © 2019 lly. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, LLYRouterMethod) {
    LLYRouterMethod_Push = 0,
    LLYRouterMethod_Present,
};

NS_ASSUME_NONNULL_BEGIN

@interface LLYRouterRequest : NSObject

- (instancetype)initWithSchemes:(NSString *)schemes method:(LLYRouterMethod)method parameters:(NSDictionary *)parameters;

- (void)resume;

@end

NS_ASSUME_NONNULL_END
