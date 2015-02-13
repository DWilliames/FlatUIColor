//
//  ViewController.m
//  FlatColorDemo
//
//  Created by David Williames on 13/02/2015.
//  Copyright (c) 2015 davidwilliames. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *colors = @[[UIColor blackColor],
                        [UIColor darkGrayColor],
                        [UIColor grayColor],
                        [UIColor lightGrayColor],
                        [UIColor whiteColor],
                        [UIColor yellowColor],
                        [UIColor darkYellowColor],
                        [UIColor orangeColor],
                        [UIColor darkOrangeColor],
                        [UIColor redColor],
                        [UIColor darkRedColor],
                        [UIColor purpleColor],
                        [UIColor darkPurpleColor],
                        [UIColor blueColor],
                        [UIColor darkBlueColor],
                        [UIColor turqoiseColor],
                        [UIColor darkTurqoiseColor],
                        [UIColor greenColor],
                        [UIColor darkGreenColor]
                        ];
    
    NSArray *colorNames = @[@"blackColor",
                            @"darkGrayColor",
                            @"grayColor",
                            @"lightGrayColor",
                            @"whiteColor",
                            @"yellowColor",
                            @"darkYellowColor",
                            @"orangeColor",
                            @"darkOrangeColor",
                            @"redColor",
                            @"darkRedColor",
                            @"purpleColor",
                            @"darkPurpleColor",
                            @"blueColor",
                            @"darkBlueColor",
                            @"turqoiseColor",
                            @"darkTurqoiseColor",
                            @"greenColor",
                            @"darkGreenColor"];
    
    int height = self.view.frame.size.height/colors.count;

    for(int i = 0; i < colors.count; i++){
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, height*i, self.view.frame.size.width, height)];
        label.backgroundColor = colors[i];
        label.text = colorNames[i];
        label.font = [UIFont fontWithName:@"Avenir-Light" size:16];
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [label.backgroundColor contrastingColor];

        [self.view addSubview:label];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
