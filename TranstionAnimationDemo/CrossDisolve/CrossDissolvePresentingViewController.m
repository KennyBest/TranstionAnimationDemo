//
//  CrossDissolvePresentingViewController.m
//  TranstionAnimationDemo
//
//  Created by llj on 16/10/24.
//  Copyright © 2016年 llj. All rights reserved.
//

#import "CrossDissolvePresentingViewController.h"

@interface CrossDissolvePresentingViewController ()

@end

@implementation CrossDissolvePresentingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)dismissBtnClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
