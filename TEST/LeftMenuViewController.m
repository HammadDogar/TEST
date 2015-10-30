//
//  LeftMenuViewController.m
//  Application Interface
//
//  Created by Blue Orca 03 on 07/10/2015.
//  Copyright (c) 2015 Blue Orca 03. All rights reserved.
//

#import "LeftMenuViewController.h"

@interface LeftMenuViewController ()

@end

@implementation LeftMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    [self.leftmenu_view addGestureRecognizer:singleTapGestureRecognizer];
    
    ////swipe
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedLeft:)];
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft ];
    [self.view addGestureRecognizer:swipeLeft];

    // Do any additional setup after loading the view.
//    _mybrands_secondview.frame=CGRectMake(_mybrands_secondview.frame.origin.x, _mybrands_secondview.frame.origin.y, 0, 0);
//    _mybrands_secondview.hidden =true;
//
//    _brandsbutton_topcontrain1.constant = -40.0;
//      [self.view layoutIfNeeded];
 
//   [_leftpanel_ScrollView setContentSize:(CGSizeMake(_leftpanel_ScrollView.frame.size.width, ))];
//    CGRect contentRect = CGRectZero;
//    for (UIView *view in self.leftpanel_ScrollView.subviews) {
//        contentRect = CGRectUnion(contentRect, view.frame);
//    }
//    self.leftpanel_ScrollView.contentSize = CGSizeMake(self.leftpanel_ScrollView.frame.size.width, 3600.0);
    
    //rounding the image view
    
 

    
}

-(void) assigningImage{
    
    _brand_imageView1.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    _brand_imageView2.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    _brand_imageView3.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    _brand_imageView4.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    _brand_imageView5.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    _brand_imageView6.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    _brand_imageView7.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    _brand_imageView8.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    _brand_imageView9.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    _brand_imageView10.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    _brand_imageView11.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    _brand_imageView12.image = [UIImage imageNamed:@"blue_aqua_apple_logo.jpg"];
    
}
-(void) roundingImage{

    //brands
    
    _brand_imageView.layer.cornerRadius =  _brand_imageView.frame.size.width/2;
    _brand_imageView.clipsToBounds = true;
    _brand_imageView1.layer.cornerRadius = _brand_imageView1.frame.size.width/2;
    _brand_imageView1.clipsToBounds = true;
    _brand_imageView2.layer.cornerRadius = _brand_imageView2.frame.size.width/2;
    _brand_imageView2.clipsToBounds = true;
    _brand_imageView3.layer.cornerRadius = _brand_imageView3.frame.size.width/2;
    _brand_imageView3.clipsToBounds = true;
    _brand_imageView4.layer.cornerRadius = _brand_imageView4.frame.size.width/2;
    _brand_imageView4.clipsToBounds = true;
    _brand_imageView5.layer.cornerRadius = _brand_imageView5.frame.size.width/2;
    _brand_imageView5.clipsToBounds = true;
    _brand_imageView6.layer.cornerRadius = _brand_imageView6.frame.size.width/2;
    _brand_imageView6.clipsToBounds = true;
    _brand_imageView7.layer.cornerRadius = _brand_imageView7.frame.size.width/2;
    _brand_imageView7.clipsToBounds = true;
    _brand_imageView8.layer.cornerRadius = _brand_imageView8.frame.size.width/2;
    _brand_imageView8.clipsToBounds = true;
    _brand_imageView9.layer.cornerRadius = _brand_imageView9.frame.size.width/2;
    _brand_imageView9.clipsToBounds = true;
    _brand_imageView10.layer.cornerRadius = _brand_imageView10.frame.size.width/2;
    _brand_imageView10.clipsToBounds = true;
    _brand_imageView11.layer.cornerRadius = _brand_imageView11.frame.size.width/2;
    _brand_imageView11.clipsToBounds = true;
    _brand_imageView12.layer.cornerRadius = _brand_imageView12.frame.size.width/2;
    _brand_imageView12.clipsToBounds = true;
    
    //battle
    _battle_imageView.layer.cornerRadius =  _battle_imageView.frame.size.width/2;
    _battle_imageView.clipsToBounds = true;
    _battle_imageView1.layer.cornerRadius = _battle_imageView1.frame.size.width/2;
    _battle_imageView1.clipsToBounds = true;
    _battle_imageView2.layer.cornerRadius = _battle_imageView2.frame.size.width/2;
    _battle_imageView2.clipsToBounds = true;
    _battle_imageView3.layer.cornerRadius = _battle_imageView3.frame.size.width/2;
    _battle_imageView3.clipsToBounds = true;
    _battle_imageView4.layer.cornerRadius = _battle_imageView4.frame.size.width/2;
    _battle_imageView4.clipsToBounds = true;
    
    //polls
    
    _polls_imageView.layer.cornerRadius =  _polls_imageView.frame.size.width/2;
    _polls_imageView.clipsToBounds = true;
    _polls_imageView1.layer.cornerRadius = _polls_imageView1.frame.size.width/2;
    _polls_imageView1.clipsToBounds = true;
    _polls_imageView2.layer.cornerRadius = _polls_imageView2.frame.size.width/2;
    _polls_imageView2.clipsToBounds = true;
    _polls_imageView3.layer.cornerRadius = _polls_imageView3.frame.size.width/2;
    _polls_imageView3.clipsToBounds = true;
    
    
    //groups
    
    _groups_imageView.layer.cornerRadius =  _groups_imageView.frame.size.width/2;
    _groups_imageView.clipsToBounds = true;
    _groups_imageView1.layer.cornerRadius = _groups_imageView1.frame.size.width/2;
    _groups_imageView1.clipsToBounds = true;
    _groups_imageView2.layer.cornerRadius = _groups_imageView2.frame.size.width/2;
    _groups_imageView2.clipsToBounds = true;
    _groups_imageView3.layer.cornerRadius = _groups_imageView3.frame.size.width/2;
    _groups_imageView3.clipsToBounds = true;
    _groups_imageView4.layer.cornerRadius = _groups_imageView4.frame.size.width/2;
    _groups_imageView4.clipsToBounds = true;
    _groups_imageView5.layer.cornerRadius = _groups_imageView5.frame.size.width/2;
    _groups_imageView5.clipsToBounds = true;
    _groups_imageView6.layer.cornerRadius = _groups_imageView6.frame.size.width/2;
    _groups_imageView6.clipsToBounds = true;
    _groups_imageView7.layer.cornerRadius = _groups_imageView7.frame.size.width/2;
    _groups_imageView7.clipsToBounds = true;
    _groups_imageView8.layer.cornerRadius = _groups_imageView8.frame.size.width/2;
    _groups_imageView8.clipsToBounds = true;
    _groups_imageView9.layer.cornerRadius = _groups_imageView9.frame.size.width/2;
    _groups_imageView9.clipsToBounds = true;
    _groups_imageView10.layer.cornerRadius = _groups_imageView10.frame.size.width/2;
    _groups_imageView10.clipsToBounds = true;
    _groups_imageView11.layer.cornerRadius = _groups_imageView11.frame.size.width/2;
    _groups_imageView11.clipsToBounds = true;
    _groups_imageView12.layer.cornerRadius = _groups_imageView12.frame.size.width/2;
    _groups_imageView12.clipsToBounds = true;
    
    
    
}
-(void) viewDidAppear:(BOOL)animated{
    [self assigningImage];
    [self roundingImage];
 
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)closeleftmenu:(id)sender {
}
-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    self.view.frame = CGRectMake(-1500,0,  self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView commitAnimations];
    
}
- (IBAction)swipedLeft:(UISwipeGestureRecognizer *)recognizer
{
    NSLog(@"swiped left");
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    self.view.frame = CGRectMake(-1500,0,  self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView commitAnimations];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
