//
//  TestViewController.m
//  FYLPageViewController
//
//  Created by FuYunLei on 2017/4/17.
//  Copyright © 2017年 FuYunLei. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIColor *colorBg = [UIColor colorWithRed:getRandomNumber()/255.f green:getRandomNumber()/255.f blue:getRandomNumber()/255.f alpha:1.0];
    self.view.backgroundColor = colorBg;
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 40)];
    label.center = self.view.center;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"第%zi个控制器",_index];
    [self.view addSubview:label];
}

int getRandomNumber(){
    
    return arc4random()%256;
}

@end
