//
//  LLYRouter.h
//  LLYRouter
//
//  Created by lly on 2019/4/11.
//  Copyright © 2019 lly. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, LLYRouterMethod) {
    LLYRouterMethod_Push = 0,
    LLYRouterMethod_Present,
};


NS_ASSUME_NONNULL_BEGIN

@interface LLYRouter : NSObject

- (void)llyRouterWithSchemes:(NSString *)schemes method:(LLYRouterMethod)method param:(NSDictionary *)param;

@end

NS_ASSUME_NONNULL_END
