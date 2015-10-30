//
//  EventDetailView-ViewController.m
//  Application Interface
//
//  Created by Blue Orca 03 on 20/10/2015.
//  Copyright (c) 2015 Blue Orca 03. All rights reserved.
//

#import "EventDetailView-ViewController.h"

@interface EventDetailView_ViewController ()

@end

@implementation EventDetailView_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ///right swap for left panel
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedRight:)];
    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight ];
    [self.view addGestureRecognizer:swipeRight];
    
    //left swap for right panel
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedLeft:)];
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft ];
    [self.view addGestureRecognizer:swipeLeft];
    
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
}
- (IBAction)swipedLeft:(UISwipeGestureRecognizer *)recognizer
{
    NSLog(@"swiped left");
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    _right_menu.view.frame = CGRectMake(0,0,  self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView commitAnimations];    [UIView commitAnimations];
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
- (IBAction)swipedRight:(UISwipeGestureRecognizer *)recognizer
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    _obj.view.frame = CGRectMake(0,0,  self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView commitAnimations];
    NSLog(@"swiped right");
}

@end
