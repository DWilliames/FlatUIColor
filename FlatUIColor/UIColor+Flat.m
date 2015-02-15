//
//  UIColor+Flat.m
//  PopupMenu
//
//  Created by David Williames on 13/02/2015.
//  Copyright (c) 2015 davidwilliames. All rights reserved.
//

#import "UIColor+Flat.h"

@implementation UIColor (Flat)

#define ColorImplement(COLOR_NAME,HEX)  \
+ (UIColor *)COLOR_NAME{    \
static UIColor* COLOR_NAME##_color;    \
static dispatch_once_t COLOR_NAME##_onceToken;   \
dispatch_once(&COLOR_NAME##_onceToken, ^{    \
COLOR_NAME##_color = [UIColor colorFromHex:HEX];  \
}); \
return COLOR_NAME##_color;  \
}

#define CustomColorImplement(COLOR_NAME,COLOR)  \
+ (UIColor *)COLOR_NAME{    \
static UIColor* COLOR_NAME##_color;    \
static dispatch_once_t COLOR_NAME##_onceToken;   \
dispatch_once(&COLOR_NAME##_onceToken, ^{    \
COLOR_NAME##_color = COLOR;  \
}); \
return COLOR_NAME##_color;  \
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

ColorImplement(blackColor, 0x2C3E50) // Midnight Blue
ColorImplement(darkGrayColor, 0x7F8C8D) // Asbestos
ColorImplement(grayColor, 0x95A5A6) // Concrete
ColorImplement(lightGrayColor, 0xBDC3C7) // Silver
ColorImplement(whiteColor, 0xECF0F1) // Clouds
ColorImplement(redColor, 0xE74C3C) // Alizarin
ColorImplement(darkRedColor, 0xC0392B) // Pomegranate
ColorImplement(greenColor, 0x2ECC71) // Emerald
ColorImplement(darkGreenColor, 0x27AE60) // Nephritis
ColorImplement(turqoiseColor, 0x1ABC9C) // Turqoise
ColorImplement(darkTurqoiseColor, 0x16A085) // Green Sea
ColorImplement(cyanColor, 0x3498DB) // Peter River
ColorImplement(blueColor, 0x3498DB) //  Peter River
ColorImplement(darkBlueColor, 0x2980B9) // Belize Hole
ColorImplement(yellowColor, 0xF1C40F) // Sun Flower
ColorImplement(darkYellowColor, 0xF39C12) // Orange
ColorImplement(orangeColor, 0xE67E22) // Carrot
ColorImplement(darkOrangeColor, 0xD35400) // Pumpkin
ColorImplement(magentaColor, 0x9B59B6) // Amethyst
ColorImplement(purpleColor, 0x9B59B6) // Amethyst
ColorImplement(darkPurpleColor, 0x8E44AD) // Wisteria

#pragma clang diagnostic pop

// Helpful methods
+ (UIColor *)colorFromHex:(UInt32)hex {
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 \
                           green:((float)((hex & 0x00FF00) >>  8))/255.0 \
                            blue:((float)((hex & 0x0000FF) >>  0))/255.0 \
                           alpha:1.0];
}

+ (UIColor *)colorFromHexString:(NSString*)hexString {
    unsigned hex = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    if([[hexString substringToIndex:1] isEqualToString:@"#"])
        [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&hex];
    return [UIColor colorFromHex:hex];
}

- (CGFloat) luminance {
    CGFloat r, g, b;
    if (![self getRed: &r green: &g blue: &b alpha:NULL])
        return 0.0f;
    return r * 0.2126f + g * 0.7152f + b * 0.0722f;
}

- (UIColor *)contrastingColor {
    return (self.luminance > 0.55f) ? [UIColor blackColor] : [UIColor whiteColor];
}

// Old UIColors
CustomColorImplement(trueBlackColor, [UIColor colorWithWhite:0.0 alpha:1.0]) // 0.0 white
CustomColorImplement(trueDarkGrayColor, [UIColor colorWithWhite:1.0/3.0 alpha:1.0]) // 0.333 white
CustomColorImplement(trueGrayColor, [UIColor colorWithWhite:0.5 alpha:1.0]) // 0.5 white
CustomColorImplement(trueLightGrayColor, [UIColor colorWithWhite:2.0/3.0 alpha:1.0]) // 0.667 white
CustomColorImplement(trueWhiteColor, [UIColor colorWithWhite:1.0 alpha:1.0]) // 1.0 white
ColorImplement(trueRedColor, 0xFF0000) // 1.0, 0.0, 0.0 RGB
ColorImplement(trueGreenColor, 0x00FF00) // 0.0, 1.0, 0.0 RGB
ColorImplement(trueBlueColor, 0x0000FF) // 0.0, 0.0, 1.0 RGB
ColorImplement(trueCyanColor, 0x00FFFF) // 0.0, 1.0, 1.0 RGB
ColorImplement(trueYellowColor, 0xFFFF00) // 1.0, 1.0, 0.0 RGB
ColorImplement(trueMagentaColor, 0xFF00FF) // 1.0, 0.0, 1.0 RGB
ColorImplement(trueOrangeColor, 0xFF7F00) // 1.0, 0.5, 0.0 RGB
ColorImplement(truePurpleColor, 0x7F007F) // 0.5, 0.0, 0.5 RGB
ColorImplement(trueBrownColor, 0x996633) // 0.6, 0.4, 0.2 RGB

@end
