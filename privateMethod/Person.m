//
//  Person.m
//  privateMethod
//
//  Created by weuse_hao on 2018/7/23.
//  Copyright © 2018 weuse_hao. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)noArg
{
    NSLog(@"no arg");
}

- (void)oneArg:(NSString *)oneage
{
    NSLog(@"one arg = %@",oneage);
}

- (void)twoArg:(NSString *)arg1 arg2:(NSNumber *)arg2
{
    NSLog(@"arg1 = %@,arg2 = %@",arg1,arg2);
}

//- (void)print:(NSString *)firstArg,... NS_REQUIRES_NIL_TERMINATION
//{
//    if (firstArg) {
//        va_list args;
//        NSString *arg;
//        va_start(args, firstArg);
//        while ((arg = va_arg(args, NSString *))) {
//            NSLog(@"%@",arg);
//        }
//        va_end(args);
//    }
//}

- (void)print:(NSString *)firstArg, ... NS_REQUIRES_NIL_TERMINATION {
    if (firstArg) {

        NSLog(@"%@", firstArg);

        va_list args;

        NSString *arg;

        va_start(args, firstArg);

        while ((arg = va_arg(args,id))) {
            NSLog(@"%@", arg);
        }

        va_end(args);
    }
}



@end
