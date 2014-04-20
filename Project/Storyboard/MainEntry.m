//
//  MainEntry.m
//  AKUStoryboardEntry
//
//  Created by akuraru on 2014/04/20.
//  Copyright (c) 2014年 akuraru. All rights reserved.
//

#import "MainEntry.h"
#import "ExtactedID.h"

@implementation MainEntry

+ (NSString *)storyboardName {
    return @"Main";
}

- (void)c:(UINavigationController *)navigation {
    [navigation popToRootViewControllerAnimated:YES];
    [navigation pushViewController:[self viewController:kStoryboardCViewController] animated:YES];
}

- (void)modelB:(UIViewController *)controller {
    UINavigationController *navigation = [self initialViewController];
    [navigation pushViewController:[self viewController:kStoryboardBViewController] animated:NO];
    [controller presentViewController:navigation animated:YES completion:nil];
}

- (void)b:(UINavigationController *)navigation {
    [navigation popToRootViewControllerAnimated:YES];
    [navigation pushViewController:[self viewController:kStoryboardBViewController] animated:YES];
}


@end
