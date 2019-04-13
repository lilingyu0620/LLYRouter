//
//  LLYRouter.h
//  LLYRouter
//
//  Created by lly on 2019/4/11.
//  Copyright © 2019 lly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LLYRouterRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface LLYRouter : NSObject

+ (void)llyRouterWithRequest:(LLYRouterRequest *)request;

@end

NS_ASSUME_NONNULL_END
