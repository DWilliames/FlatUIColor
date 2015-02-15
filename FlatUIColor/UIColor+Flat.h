//
//  UIColor+Flat.h
//  PopupMenu
//
//  Created by David Williames on 13/02/2015.
//  Copyright (c) 2015 davidwilliames. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Flat)

// New Flat colors taken from http://flatuicolors.com/
+ (UIColor *)blackColor; // Midnight Blue - Override
+ (UIColor *)darkGrayColor; // Asbestos - Override
+ (UIColor *)grayColor; // Concrete - Override
+ (UIColor *)lightGrayColor; // Silver - Override
+ (UIColor *)whiteColor; // Clouds - Override
+ (UIColor *)redColor; // Alizarin - Override
+ (UIColor *)darkRedColor; // Pomegranate - **NEW**
+ (UIColor *)greenColor; // Emerald - Override
+ (UIColor *)darkGreenColor; // Nephritis - **NEW**
+ (UIColor *)turqoiseColor; // Turquoise - **NEW**
+ (UIColor *)darkTurqoiseColor; // Green Sea - **NEW**
+ (UIColor *)cyanColor; // Peter River - Override
+ (UIColor *)blueColor; // Peter River - Override
+ (UIColor *)darkBlueColor; // Belize Hole - **NEW**
+ (UIColor *)yellowColor; // Sun FLower - Override
+ (UIColor *)darkYellowColor; // Orange - **NEW*
+ (UIColor *)orangeColor; // Carrot - Override
+ (UIColor *)darkOrangeColor; // Pumpkin - **NEW**
+ (UIColor *)magentaColor; // Amethyst - Override
+ (UIColor *)purpleColor; // Amethyst - Override
+ (UIColor *)darkPurpleColor; // Wisteria - **NEW**

// Helpful methods
+ (UIColor *)colorFromHex:(UInt32)hex;
+ (UIColor *)colorFromHexString:(NSString*)hexString;
- (UIColor *)contrastingColor;

// Old UIColors
+ (UIColor *)trueBlackColor;      // 0.0 white
+ (UIColor *)trueDarkGrayColor;   // 0.333 white
+ (UIColor *)trueLightGrayColor;  // 0.667 white
+ (UIColor *)trueWhiteColor;      // 1.0 white
+ (UIColor *)trueGrayColor;       // 0.5 white
+ (UIColor *)trueRedColor;        // 1.0, 0.0, 0.0 RGB
+ (UIColor *)trueGreenColor;      // 0.0, 1.0, 0.0 RGB
+ (UIColor *)trueBlueColor;       // 0.0, 0.0, 1.0 RGB
+ (UIColor *)trueCyanColor;       // 0.0, 1.0, 1.0 RGB
+ (UIColor *)trueYellowColor;     // 1.0, 1.0, 0.0 RGB
+ (UIColor *)trueMagentaColor;    // 1.0, 0.0, 1.0 RGB
+ (UIColor *)trueOrangeColor;     // 1.0, 0.5, 0.0 RGB
+ (UIColor *)truePurpleColor;     // 0.5, 0.0, 0.5 RGB
+ (UIColor *)trueBrownColor;      // 0.6, 0.4, 0.2 RGB

@end
