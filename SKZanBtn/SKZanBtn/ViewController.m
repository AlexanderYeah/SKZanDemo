//
//  ViewController.m
//  SKZanBtn
//
//  Created by Alexander on 2017/12/10.
//  Copyright © 2017年 alexander. All rights reserved.
//

#import "ViewController.h"
#import "ZanBtn.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	
	ZanBtn *btn = [ZanBtn buttonWithType:UIButtonTypeCustom];
	btn.frame = CGRectMake(150, 150, 50, 50);
	[btn setImage:[UIImage imageNamed:@"praise_default"] forState:UIControlStateNormal];
	
	[btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:btn];
	
}


- (void)btnClick:(UIButton *)btn{
	// praise_select
	if (btn.selected) {
		[btn setImage:[UIImage imageNamed:@"praise_default"] forState:UIControlStateNormal];
	}else{
		[btn setImage:[UIImage imageNamed:@"praise_select"] forState:UIControlStateNormal];
	}
	
	[btn setSelected:!btn.selected];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
