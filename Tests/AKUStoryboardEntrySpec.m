//
//  AKUStoryboardEntrySpec.m
//  AKUStoryboardEntry
//
//  Created by akuraru on 2014/04/20.
//  Copyright (c) 2014年 akuraru. All rights reserved.
//

#import "Kiwi.h"
#import "MainEntry.h"
#import "ExtactedID.h"
#import "AViewController.h"
#import "BViewController.h"
#import "CViewController.h"
#import "DViewController.h"


SPEC_BEGIN(AKUStoryboardSpec)
describe(@"MainEntry", ^{
    let(entry,^{ return [MainEntry sharedEntry];});
    
    describe(@"viewController", ^{
        it(@"get navigation controller", ^{
            UINavigationController *controller = [entry initialViewController];
            [[controller should] beKindOfClass:[UINavigationController class]];
            [[[controller topViewController] should] beKindOfClass:[AViewController class]];
        });
        it(@"get A", ^{
            UIViewController *controller = [entry viewController:kStoryboardAViewController];
            [[controller should] beKindOfClass:[AViewController class]];
        });
        it(@"get B", ^{
            UIViewController *controller = [entry viewController:kStoryboardBViewController];
            [[controller should] beKindOfClass:[BViewController class]];
        });
        it(@"get C", ^{
            UIViewController *controller = [entry viewController:kStoryboardCViewController];
            [[controller should] beKindOfClass:[CViewController class]];
        });
        it(@"get D", ^{
            UIViewController *controller = [entry viewController:kStoryboardDViewController];
            [[controller should] beKindOfClass:[DViewController class]];
        });
    });
    
    describe(@"push", ^{
        let(navigation, ^{ return [entry initialViewController]; });
        
        context(@"b", ^{
            let(viewControllers, ^{
                for (int i = 0, _len = arc4random_uniform(10); i < _len; i++) {
                    UIViewController *controller = [entry viewController:kStoryboardDViewController];
                    [navigation pushViewController:controller animation:NO];
                }
                [[MainEntry sharedEntry] b:navigation];
                return [navigation viewControllers]
            });
            
        });
        it(@"get B", ^{
            UIViewController *controller = [entry viewController:kStoryboardBViewController];
            [[controller should] beKindOfClass:[BViewController class]];
        });
        it(@"get C", ^{
            UIViewController *controller = [entry viewController:kStoryboardCViewController];
            [[controller should] beKindOfClass:[CViewController class]];
        });
        it(@"get D", ^{
            UIViewController *controller = [entry viewController:kStoryboardDViewController];
            [[controller should] beKindOfClass:[DViewController class]];
        });
    });
});
SPEC_END
