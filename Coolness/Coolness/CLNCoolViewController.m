// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolViewController.h"
#import "CLNCoolViewCell.h"

@implementation CLNCoolViewController

- (void)loadView {
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = UIColor.systemBrownColor;
    
    CLNCoolViewCell *subview1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(20, 60, 240, 40)];
    CLNCoolViewCell *subview2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(40, 120, 240, 40)];
    [self.view addSubview:subview1];
    [self.view addSubview:subview2];
    
    subview1.text = @"Hello World! 🌎🌏🌍";
    subview2.text = @"Cool View Cells Rock! 🥂🍾";
    
    subview1.backgroundColor = UIColor.systemPurpleColor;
    subview2.backgroundColor = UIColor.systemOrangeColor;
}

@end
