//
//  CMStiffSwingViewController.m
//  DynamicsUberCatalog
//
//  Created by Chris Miles on 6/11/2013.
//  Copyright (c) 2013 Chris Miles. All rights reserved.
//

#import "CMStiffSwingViewController.h"
#import <DynamicsXRay/DynamicsXRay.h>


@interface CMStiffSwingViewController ()

@property (strong, nonatomic) IBOutlet UIView *anchorView;
@property (strong, nonatomic) IBOutlet UIView *swingView;

@property (strong, nonatomic) UIDynamicAnimator *animator;
@property (strong, nonatomic) UIPushBehavior *pushBehavior;

@property (strong, nonatomic) DynamicsXRay *dynamicsXRay;

@end


@implementation CMStiffSwingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];

    UIAttachmentBehavior *attachmentBehavior = [[UIAttachmentBehavior alloc] initWithItem:self.swingView attachedToAnchor:self.anchorView.center];
    UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc] initWithItems:@[self.swingView]];
    self.pushBehavior = [[UIPushBehavior alloc] initWithItems:@[self.swingView] mode:UIPushBehaviorModeInstantaneous];
    UIDynamicItemBehavior *itemBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[self.swingView]];
    itemBehavior.resistance = 0.7f;

    [self.animator addBehavior:attachmentBehavior];
    [self.animator addBehavior:gravityBehavior];
    [self.animator addBehavior:self.pushBehavior];
    [self.animator addBehavior:itemBehavior];

    self.dynamicsXRay = [[DynamicsXRay alloc] init];
    [self.animator addBehavior:self.dynamicsXRay];

    UIBarButtonItem *flexibleItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *xrayItem = [[UIBarButtonItem alloc] initWithTitle:@"XRay" style:UIBarButtonItemStyleBordered target:self action:@selector(xrayAction:)];
    self.toolbarItems = @[flexibleItem, xrayItem];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    [self.navigationController setToolbarHidden:NO animated:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    [self.pushBehavior setAngle:((CGFloat)(90.0f * M_PI / 180.0f)) magnitude:5000.0f];
    [self.pushBehavior setActive:YES];
}


#pragma mark - DynamicsXray

- (BOOL)isDynamicsXRayEnabled
{
    return (self.dynamicsXRay != nil);
}

- (void)setDynamicsXRayEnabled:(BOOL)dynamicsXRayEnabled
{
    if (dynamicsXRayEnabled) {
        if (self.dynamicsXRay == nil) {
            self.dynamicsXRay = [[DynamicsXRay alloc] init];
            self.dynamicsXRay.crossFade = 0;
            [self.animator addBehavior:self.dynamicsXRay];
        }
    }
    else {
        if (self.dynamicsXRay) {
            [self.animator removeBehavior:self.dynamicsXRay];
            self.dynamicsXRay = nil;
        }
    }
}

- (void)xrayAction:(__unused id)sender
{
    [self.dynamicsXRay presentConfigurationViewController];
}

@end