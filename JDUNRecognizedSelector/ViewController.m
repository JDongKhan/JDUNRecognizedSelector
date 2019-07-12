//
//  ViewController.m
//  JDUNRecognizedSelector
//
//  Created by JD on 2019/7/12.
//  Copyright © 2019 JD. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+JDUNRecoginzedselector.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSObject.unrecoginzedselectorBlock = ^(__unsafe_unretained Class clazz, NSInvocation *invocation) {
        NSLog(@"class:%@, selector:%@",NSStringFromClass(clazz),NSStringFromSelector(invocation.selector));
    };
    
    [self test];
    [ViewController test];
    
   
    // Do any additional setup after loading the view.
}

//- (void)test {
//    NSLog(@"test1");
//}

//+ (void)test {
//    NSLog(@"test2");
//}


@end
