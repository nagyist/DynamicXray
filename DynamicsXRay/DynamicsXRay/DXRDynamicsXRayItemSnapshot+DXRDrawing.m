//
//  DXRDynamicsXRayItemSnapshot+DXRDrawing.m
//  DynamicsXRay
//
//  Created by Chris Miles on 7/11/2013.
//  Copyright (c) 2013 Chris Miles. All rights reserved.
//

#import "DXRDynamicsXRayItemSnapshot+DXRDrawing.h"

@implementation DXRDynamicsXRayItemSnapshot (DXRDrawing)

- (void)drawInContext:(CGContextRef)context
{
    CGRect bounds = self.bounds;
    CGFloat halfWidth = CGRectGetWidth(bounds)/2.0f;
    CGFloat halfHeight = CGRectGetHeight(bounds)/2.0f;

    CGContextTranslateCTM(context, self.center.x - halfWidth, self.center.y - halfHeight);

    CGContextTranslateCTM(context, halfWidth, halfHeight);
    CGContextConcatCTM(context, self.transform);
    CGContextTranslateCTM(context, -halfWidth, -halfHeight);

    CGContextAddRect(context, self.bounds);
    CGContextStrokePath(context);
}

@end