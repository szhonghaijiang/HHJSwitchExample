//
//  ViewController.m
//  HHJSwitchExample
//
//  Created by bu88 on 16/5/20.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "ViewController.h"
#import "HHJSwitch.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HHJSwitch *mySwitch = [[HHJSwitch alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [mySwitch setOnTintColor:[UIColor greenColor]];
    [mySwitch setTurnOnImage:[UIImage  imageNamed:@"switchOn"]];
    [mySwitch setTurnOffImage:[UIImage  imageNamed:@"switchOff"]];
    [self.view addSubview:mySwitch];
    
    [mySwitch setDidChangeHandler:^(BOOL isOn) {
        NSLog(@"ison:%d", isOn);
        NSLog(@"mySwitch:%@", mySwitch);
    }];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
