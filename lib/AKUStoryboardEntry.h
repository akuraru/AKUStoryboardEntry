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

- (id)initWithStoryboard:(UIStoryboard *)storyboard;

- (id)initialViewController;
- (id)viewController:(NSString *)identifier;

- (void)showModelInitaial:(UIViewController *)controller;

+ (NSString *)storyboardName;
@end
