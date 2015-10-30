//
//  Signup.h
//  Application Interface
//
//  Created by Blue Orca 03 on 30/09/2015.
//  Copyright (c) 2015 Blue Orca 03. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftMenuViewController.h"
#import "RghtPanel_ViewController.h"
@interface Signup : UIViewController 
@property (weak, nonatomic) IBOutlet UIButton *signup_button;
@property (weak, nonatomic) IBOutlet UIButton *back_button;
@property (weak, nonatomic) IBOutlet UITextField *name_textbox;
@property (weak, nonatomic) IBOutlet UITextField *email_textbox;
@property (weak, nonatomic) IBOutlet UIButton *male_button;
@property (weak, nonatomic) IBOutlet UIButton *female_button;
- (IBAction)female_method:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *male_label;
@property (weak, nonatomic) IBOutlet UILabel *female_label;
@property (weak, nonatomic) IBOutlet UILabel *year_label;

@property (weak, nonatomic) IBOutlet UIView *date_view;
@property (weak, nonatomic) IBOutlet UILabel *month_label;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *datepicker_view;
@property (weak, nonatomic) IBOutlet UILabel *day_label;
- (IBAction)getdate:(id)sender;
-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer;
@property int day;
@property int month;
@property int year;
@property (weak, nonatomic) IBOutlet UIView *popupView;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property BOOL ismale;
@property  LeftMenuViewController *obj;
@property RghtPanel_ViewController *right_menu;
@end
