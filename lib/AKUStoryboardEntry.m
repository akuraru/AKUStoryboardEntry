//
//  AKUStoryboardEntry.m
//  AKUStoryboardEntry
//
//  Created by akuraru on 2014/04/20.
//  Copyright (c) 2014年 akuraru. All rights reserved.
//

#import "AKUStoryboardEntry.h"

@interface AKUStoryboardEntry ()

@property (readwrite, nonatomic, strong) UIStoryboard *storyboard;

@end

@implementation AKUStoryboardEntry

+ (instancetype)sharedEntry {
    static id sharedManager_ = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager_ = [[self alloc] init];
    });
    return sharedManager_;
}

+ (UIStoryboard *)storyboard {
    return [UIStoryboard storyboardWithName:[self storyboardName] bundle:nil];
}

- (id)init {
    return [self initWithStoryboard:[[self class] storyboard]];
}

- (id)initWithStoryboard:(UIStoryboard *)storyboard {
    self = [super init];
    if (self) {
        self.storyboard = storyboard;
    }
    return self;
}

- (id)initialViewController {
    return [self.storyboard instantiateInitialViewController];
}

- (id)viewController:(NSString *)identifier {
    return [self.storyboard instantiateViewControllerWithIdentifier:identifier];
}

- (void)showModelInitaial:(UIViewController *)controller {
    [controller presentViewController:[self.storyboard instantiateInitialViewController] animated:YES completion:nil];
}

+ (NSString *)storyboardName {
    return nil;
}

@end
