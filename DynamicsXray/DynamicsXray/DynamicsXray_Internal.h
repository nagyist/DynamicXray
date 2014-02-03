//
//  DynamicsXray_Internal.h
//  DynamicsXray
//
//  Created by Chris Miles on 12/11/2013.
//  Copyright (c) 2013-2014 Chris Miles. All rights reserved.
//

#import "DynamicsXray.h"
#import "DXRDynamicsXrayViewController.h"
@class DXRDynamicsXrayWindowController;


@interface DynamicsXray () {
    CGFloat _crossFade;
    BOOL _drawDynamicItemsEnabled;
}

@property (weak, nonatomic) UIView *referenceView;

@property (weak, nonatomic) UIView *previousReferenceView;
@property (weak, nonatomic) UIWindow *previousReferenceViewWindow;
@property (assign, nonatomic) CGRect previousReferenceViewFrame;

@property (strong, nonatomic) DXRDynamicsXrayViewController *xrayViewController;
@property (strong, nonatomic) UIWindow *xrayWindow;

@property (strong, nonatomic) NSMutableSet *dynamicItemsToDraw;
@property (strong, nonatomic) NSMapTable *dynamicItemContactLifetimes;
@property (strong, nonatomic) NSMapTable *pathContactLifetimes;
@property (strong, nonatomic) NSMapTable *instantaneousPushBehaviorLifetimes;

- (void)redraw;
- (DXRDynamicsXrayWindowController *)xrayWindowController;
- (DXRDynamicsXrayView *)xrayView;

@end
