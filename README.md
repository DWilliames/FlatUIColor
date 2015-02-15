# FlatUIColor - UIColor+Flat
`UIColor+Flat` is an Objective C category to override UIColor's standard colors with beautiful Flat UI ones.

All new colors are taken from [FlatUIColors.com](http://flatuicolors.com/).
![Color comparison](screenshot%20comparison.png)

There are some other classes available that will already grab these Flat UI colors, however, they all use the actual name of the color. eg. `[UIColor flatEmeraldColor]`. Which I have found to be difficult to remember, and also annoying to implement into a project already containing the standard `UIColor` methods.

*What makes this better...?*
You don’t have to do anything differently. Just add the files, and you are locked and loaded and ready to make stuff prettier!


## Usage
To use, just import `UIColor+Flat.m` and `UIColor+Flat.h` into your project, and use `UIColor` as you normally would.

``` objc
self.view.backgroundColor = [UIColor redColor];
```

## Extra Colors
As well as overriding the stand UIColor methods. A few more colors such as `darkRedColor` have been added. Here is a full list of the colors.

![All Flat UI Colors](screenshot.png)

``` objc
 [UIColor blackColor];
 [UIColor darkGrayColor];
 [UIColor grayColor];
 [UIColor lightGrayColor];
 [UIColor whiteColor];
 [UIColor yellowColor];
 [UIColor darkYellowColor];
 [UIColor orangeColor];
 [UIColor darkOrangeColor];
 [UIColor redColor];
 [UIColor darkRedColor];
 [UIColor purpleColor];
 [UIColor darkPurpleColor];
 [UIColor blueColor];
 [UIColor darkBlueColor];
 [UIColor turqoiseColor];
 [UIColor darkTurqoiseColor];
 [UIColor greenColor];
 [UIColor darkGreenColor];
```

## Old UIColors
To use the original colors declared in `UIColor`, simply add the word “true” in front of the name.
``` objc
[UIColor trueBlackColor];
[UIColor trueDarkGrayColor];
[UIColor trueLightGrayColor];
[UIColor trueWhiteColor];
[UIColor trueGrayColor];
[UIColor trueRedColor];
[UIColor trueGreenColor];
[UIColor trueBlueColor];
[UIColor trueCyanColor];
[UIColor trueYellowColor];
[UIColor trueMagentaColor];
[UIColor trueOrangeColor];
[UIColor truePurpleColor];
[UIColor trueBrownColor];
```

## Bonus Methods
A few bonus methods exist in UIColor+Flat.

``` objc
- (UIColor *)contrastingColor;
```
Will return either `[UIColor blackColor]` or `[UIColor whiteColor]`, depending on which color will contrast most. Great for finding the text color to use on a colored background. *(What I used to color the text in the previous image).* eg.
`label.textColor = [label.backgroundColor contrastingColor]` 
or 
`label.textColor = label.backgroundColor.contrastingColor`

``` objc
+ (UIColor *)colorFromHex:(UInt32)hex;
```
Will return the color from a hex value, such as `0x2C3E50`.


``` objc
+ (UIColor *)colorFromHexString:(NSString*)hexString;
```
Will return a color from a hex string, either `@"#2C3E50"` or `@"2C3E50"`.



## License
`UIColor+Flat` is released under the [MIT license](https://github.com/DWilliames/FlatUIColor/blob/master/LICENSE).
