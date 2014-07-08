//
//  AKUStoryboardEntry.h
//  AKUStoryboardEntry
//
//  Created by akuraru on 2014/04/20.
//  Copyright (c) 2014年 akuraru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKUStoryboardEntry : NSObject

@property (readonly, nonatomic, strong) UIStoryboard *storyboard;

+ (instancetype)sharedEntry;

+ (UIStoryboard *)storyboard;

- (id)initialViewController;
- (id)viewController:(NSString *)identifier;

- (void)showModelInitial:(UIViewController *)controller;

// Please override to return the name of the storyboard this method
+ (NSString *)storyboardName;
@end
