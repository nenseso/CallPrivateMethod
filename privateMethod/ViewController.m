//
//  ViewController.m
//  privateMethod
//
//  Created by weuse_hao on 2018/7/23.
//  Copyright © 2018 weuse_hao. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>
#import <objc/message.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *p = [Person new];
//    [p print:@"123",@"4",@"5",nil];
    unsigned int count = 0;
    Method *methods = class_copyMethodList([Person class], &count);
    for (int i = 0; i < count; i++) {
        SEL name = method_getName(methods[i]);
        NSString *methodName = [NSString stringWithCString:sel_getName(name) encoding:NSUTF8StringEncoding];
        NSLog(@"%@",methodName);
        if ([methodName isEqualToString:@"print:"]) {
            void (*methodPrint)(id,SEL,NSString * , ...) = (void (*) (id,SEL,NSString * , ...))objc_msgSend;
            methodPrint(p,@selector(print:),@"123",@"456",nil);
        }

    }
//    Person *p = [Person new];
//    [p performSelector:@selector(noArg)];
//    [p performSelector:@selector(oneArg:) withObject:@"123"];
//    [p performSelector:@selector(twoArg:arg2:) withObject:@"123" withObject:@1];
    
}




@end
