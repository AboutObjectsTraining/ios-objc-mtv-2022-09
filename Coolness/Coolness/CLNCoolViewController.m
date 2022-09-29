// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolViewController.h"
#import "CLNCoolViewCell.h"

@interface CLNCoolViewController ()
@property (strong, nonatomic) UITextField *textField;
@property (strong, nonatomic) UIView *contentView;
@end

@implementation CLNCoolViewController

- (void)addCell {
    NSLog(@"In %s", __func__);
    CLNCoolViewCell *newCell = [[CLNCoolViewCell alloc] init];
    newCell.text = self.textField.text;
    newCell.backgroundColor = UIColor.systemGreenColor;
    [self.contentView addSubview:newCell];
}

- (void)loadView {
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = UIColor.systemBrownColor;
    
    CGRect screenRect = UIScreen.mainScreen.bounds;
    CGRect accessoryRect;
    CGRect contentRect;
    CGRectDivide(screenRect, &accessoryRect, &contentRect, 105, CGRectMinYEdge);
    
    UIView *accessoryView = [[UIView alloc] initWithFrame:accessoryRect];
    self.contentView = [[UIView alloc] initWithFrame:contentRect];
    
    self.contentView.clipsToBounds = YES;
    
    [self.view addSubview:accessoryView];
    [self.view addSubview:self.contentView];
    
    accessoryView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.6];
    self.contentView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.4];
    
    // Controls
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 60, 240, 36)];
    [accessoryView addSubview:self.textField];
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.textField.placeholder = @"Type something here";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [accessoryView addSubview:button];
    [button setTitle:@" Add Cell " forState:UIControlStateNormal];
    [button setTitle:@"Adding..." forState:UIControlStateHighlighted];
    [button sizeToFit];
    button.frame = CGRectOffset(button.frame, 280, 60);
    
    [button addTarget:self action:@selector(addCell) forControlEvents:UIControlEventTouchUpInside];
    
    // Cells
    
    CLNCoolViewCell *subview1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(20, 60, 240, 40)];
    CLNCoolViewCell *subview2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(40, 120, 240, 40)];
    [self.contentView addSubview:subview1];
    [self.contentView addSubview:subview2];
    
    subview1.text = @"Hello World! 🌎🌏🌍";
    subview2.text = @"Cool View Cells Rock! 🥂🍾";
    
    subview1.backgroundColor = UIColor.systemPurpleColor;
    subview2.backgroundColor = UIColor.systemOrangeColor;
}

@end
