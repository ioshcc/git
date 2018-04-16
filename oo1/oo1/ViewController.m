//
//  ViewController.m
//  oo1
//
//  Created by hanchongchong on 2018/4/11.
//  Copyright © 2018年 hanchongchong. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (strong, nonatomic)NSArray *name; //!< name
@property (strong, atomic) NSMutableArray *arr;
@property (copy, nonatomic)Person *p; //!<

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSMutableString *ms = [NSMutableString stringWithFormat:@"你好中国"];
    
//    NSString *ms = [NSString stringWithFormat:@"你好中国"];
    NSMutableArray *ms = [NSMutableArray arrayWithObject:@"hh"];
    
    self.arr = ms;
    
    [self.arr addObject:@"hhh"];
    
    self.name = ms;
    
    [ms addObject:@"hhh"];
    
    self.p = [[Person alloc] init];
    
    
    
//    [ms appendString:@"I Love You"];
//    ms = [NSString stringWithFormat:@"%@", @"你好大家"];
    
    NSLog(@"%@", self.arr);
    
//    [[[Person alloc] init] sendText:@"你好"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
