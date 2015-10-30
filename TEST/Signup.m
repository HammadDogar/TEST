//
//  Signup.m
//  Application Interface
//
//  Created by Blue Orca 03 on 30/09/2015.
//  Copyright (c) 2015 Blue Orca 03. All rights reserved.
//

#import "Signup.h"

@interface Signup ()

@end

@implementation Signup

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //for left menu panel
    _obj = [self.storyboard instantiateViewControllerWithIdentifier:@"LeftMenuViewController"];
    _obj.view.frame= CGRectMake(-1500, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self addChildViewController:_obj];
    [self.view addSubview:_obj.view];
    //for right panel
    _right_menu = [self.storyboard instantiateViewControllerWithIdentifier:@"RghtPanel_ViewController"];
    _right_menu.view.frame= CGRectMake(1500, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self addChildViewController:_right_menu];
    [self.view addSubview:_right_menu.view];
    _back_button.layer.cornerRadius =5;
    _signup_button.layer.cornerRadius =5;
    _name_textbox.borderStyle=UITextBorderStyleRoundedRect;
    _email_textbox.borderStyle=UITextBorderStyleRoundedRect;
    _date_view.layer.cornerRadius=5;
    UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    [self.date_view addGestureRecognizer:singleTapGestureRecognizer];
    [_datePicker setValue:[UIColor whiteColor] forKey:@"textColor"];
    [_datePicker setMaximumDate:[NSDate date]];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)male_method:(id)sender {
    UIButton *btn = (UIButton *)sender;
    //if (_ismale) {
        
    
        [btn setImage :[UIImage imageNamed:@"male-icon-normal-tap.png"] forState:UIControlStateNormal];
    [_female_button setImage:[UIImage imageNamed:@"female-icon-normal.png"] forState:UIControlStateNormal];
        _ismale = true;
    _male_label.textColor = [UIColor blackColor];
    _female_label.textColor = [UIColor grayColor];
     //  }
    

    
}
- (IBAction)female_method:(id)sender {
    UIButton *btn = (UIButton *)sender;
   
    [btn setImage:[UIImage imageNamed:@"female-icon-normal-tap.png"] forState:UIControlStateNormal];
     [_male_button setImage:[UIImage imageNamed:@"male-icon-normal.png"] forState:UIControlStateNormal];
    _ismale = false;
    _male_label.textColor = [UIColor grayColor];
    _female_label.textColor = [UIColor blackColor];
}
- (IBAction)getdate:(id)sender {
    [_popupView setHidden:true];
//    NSData *getDate = [self.datePicker date];
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd/MM/YYYY"];
    NSString *getDate = [dateFormatter stringFromDate:[_datePicker date]];
    NSDate *newDate = [dateFormatter dateFromString:getDate];
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:[_datePicker date]];
    _day = [components day];
    _month = [components month];
    _year = [components year];
    NSArray *dateArray = [getDate componentsSeparatedByString:@"/"];
    _day_label.text = dateArray[0];//[getDate sub]//[NSString stringWithFormat:@"%i",_day];
    _month_label.text = dateArray[1];//[NSString stringWithFormat:@"%i",_month];
    _year_label.text = dateArray[2];//[NSString stringWithFormat:@"%i",_year];
    
}

-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer{
    NSLog(@"touch work");
    [_popupView setHidden:FALSE];
}
- (IBAction)leftpanel:(id)sender {
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    _obj.view.frame = CGRectMake(0,0,  self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView commitAnimations];
    
}

- (IBAction)rightpanel:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    _right_menu.view.frame = CGRectMake(0,0,  self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView commitAnimations];
    
    
}

@end
