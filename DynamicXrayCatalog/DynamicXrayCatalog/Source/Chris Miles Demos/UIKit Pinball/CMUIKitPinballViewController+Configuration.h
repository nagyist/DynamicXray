//
//  CMUIKitPinballViewController+Configuration.h
//  DynamicXrayCatalog
//
//  Created by Chris Miles on 19/02/2014.
//  Copyright (c) 2014 Chris Miles. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "CMUIKitPinballViewController.h"

extern CGFloat             const CMUIKitPinballBumperRadiusPhone;
extern CGFloat             const CMUIKitPinballBumperRadiusPad;


extern CGFloat             const CMUIKitPinballLaunchMagnitudePhone;
extern CGFloat             const CMUIKitPinballLaunchMagnitudePad;


extern CGSize              const CMUIKitPinballFlipperSizePhone;
extern CGSize              const CMUIKitPinballFlipperSizePadPortrait;
extern CGSize              const CMUIKitPinballFlipperSizePadLandscape;


extern CGFloat             const CMUIKitPinballFlipperAnglePhone;
extern CGFloat             const CMUIKitPinballFlipperAnglePad;

extern CGFloat             const CMUIKitPinballTopEdgeCornerRadiusPhone;
extern CGFloat             const CMUIKitPinballTopEdgeCornerRadiusPad;


#define ConfigValueForIdiom(padIdiomValue, phoneIdiomValue) ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad ? padIdiomValue : phoneIdiomValue)

