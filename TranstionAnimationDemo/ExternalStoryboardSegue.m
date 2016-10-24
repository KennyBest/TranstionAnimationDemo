//
//  ExternalStoryboardSegue.m
//  TranstionAnimationDemo
//
//  Created by llj on 16/10/24.
//  Copyright © 2016年 llj. All rights reserved.
//

#import "ExternalStoryboardSegue.h"

@implementation ExternalStoryboardSegue

- (instancetype)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination {
    
    UIStoryboard *externalStoryboard = [UIStoryboard storyboardWithName:identifier bundle:[NSBundle bundleForClass:self.class]];
    
    id initialViewController = [externalStoryboard instantiateInitialViewController];
    
    return [super initWithIdentifier:identifier source:source destination:initialViewController];
}

- (void)perform {
    [self.sourceViewController presentViewController:self.destinationViewController animated:YES completion:nil];
}

@end
