// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolViewController.h"
#import "CLNCoolViewCell.h"

@interface CLNCoolViewController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIView *contentView;
@end

@implementation CLNCoolViewController

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"In %s", __func__);
//    [super touchesBegan:touches withEvent:event];
//}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)addCell {
    NSLog(@"In %s", __func__);
    CLNCoolViewCell *newCell = [[CLNCoolViewCell alloc] init];
    newCell.text = self.textField.text;
    newCell.backgroundColor = UIColor.systemGreenColor;
    [self.contentView addSubview:newCell];
}

//- (void)loadView3 {
//    [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:self options:nil];
//}
//
//- (void)loadView2 {
//    NSArray *topLevelObjs = [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:nil options:nil];
//    self.view = topLevelObjs.firstObject;
//}
//
//- (void)viewDidLoad {
//    CLNCoolViewCell *subview1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(20, 60, 240, 40)];
//    CLNCoolViewCell *subview2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(40, 120, 240, 40)];
//    [self.contentView addSubview:subview1];
//    [self.contentView addSubview:subview2];
//
//    subview1.text = @"Hello World! 🌎🌏🌍";
//    subview2.text = @"Cool View Cells Rock! 🥂🍾";
//
//    subview1.backgroundColor = UIColor.systemPurpleColor;
//    subview2.backgroundColor = UIColor.systemOrangeColor;
//}

@end
