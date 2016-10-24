//
//  CrossDissolvePresentedViewController.m
//  TranstionAnimationDemo
//
//  Created by llj on 16/10/24.
//  Copyright © 2016年 llj. All rights reserved.
//

#import "CrossDissolvePresentedViewController.h"
#import "CrossDissolveTransitionAnimator.h"

@interface CrossDissolvePresentedViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation CrossDissolvePresentedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)presentBtnClick:(UIButton *)sender {

    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"CrossDissolvePresentingViewController"];
    
    viewController.modalPresentationStyle = UIModalPresentationFullScreen;
    viewController.transitioningDelegate = self;
    
    [self presentViewController:viewController animated:YES completion:nil];
}

#pragma mark - UIViewControllerTransitionDelegate

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return [[CrossDissolveTransitionAnimator alloc] init];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [[CrossDissolveTransitionAnimator alloc] init];
}
@end


