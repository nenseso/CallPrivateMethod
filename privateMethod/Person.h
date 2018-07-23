//
//  Person.h
//  privateMethod
//
//  Created by weuse_hao on 2018/7/23.
//  Copyright © 2018 weuse_hao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

- (void)print:(NSString *)firstArg,... NS_REQUIRES_NIL_TERMINATION;

@end

NS_ASSUME_NONNULL_END
