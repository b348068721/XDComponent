//
//  XDViewController.m
//  XDComponent
//
//  Created by b348068721 on 03/07/2019.
//  Copyright (c) 2019 b348068721. All rights reserved.
//

#import "XDViewController.h"
#import "XDTestViewController.h"
#import "XDTest.h"
@interface XDViewController ()

@end

@implementation XDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *arr;
    NSInteger dataCount = arr.count;
    NSInteger rowHeight = 40;
    NSInteger itemHeight = (dataCount/3 + (dataCount%3 ? 1 : 0)) * rowHeight;
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor blueColor];
    XDTest *test = [[XDTest alloc]init];
    [test setTestLog];
}

- (void)click {
    XDTestViewController *vc = [[XDTestViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
