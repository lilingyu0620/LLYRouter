//
//  LLYRouterHandle.h
//  LLYRouter
//
//  Created by lly on 2019/4/11.
//  Copyright © 2019 lly. All rights reserved.
//

#ifndef LLYRouterHandle_h
#define LLYRouterHandle_h


@protocol LLYRouterHandle <NSObject>

//push
+ (void)pushWithParament:(NSDictionary *)parament;

//present
+ (void)presentWithParament:(NSDictionary *)parament;

@end


#endif /* LLYRouterHandle_h */
