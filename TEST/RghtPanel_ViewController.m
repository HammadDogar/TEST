//
//  RghtPanel_ViewController.m
//  Application Interface
//
//  Created by Blue Orca 03 on 16/10/2015.
//  Copyright (c) 2015 Blue Orca 03. All rights reserved.
//

#import "RghtPanel_ViewController.h"

@interface RghtPanel_ViewController ()

@end

@implementation RghtPanel_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    _setting_tableView.estimatedRowHeight = _setting_tableView.frame.size.height/12;
//    _setting_tableView.rowHeight = UITableViewAutomaticDimension;
    UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    [self.right_view addGestureRecognizer:singleTapGestureRecognizer];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedRight:)];
    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight ];
    [self.view addGestureRecognizer:swipeRight];

    

}

-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    self.view.frame = CGRectMake(1500,0,  self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView commitAnimations];
    
}
- (IBAction)swipedRight:(UISwipeGestureRecognizer *)recognizer
{
    NSLog(@"swiped left");
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    self.view.frame = CGRectMake(1500,0,  self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView commitAnimations];
}
-(void) viewDidAppear:(BOOL)animated
{
     _profilePic_ImageView.layer.cornerRadius = _profilePic_ImageView.frame.size.width/2;
    [_setting_tableView reloadData];
    
  
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//tableview delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return _setting_tableView.frame.size.height/12;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 12;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    static NSString *simpleTableIdentifier = @"SimpleTableItem";
//    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    

    CGSize size = CGSizeMake(cell.frame.size.height-10, cell.frame.size.height-10);
    if(indexPath.row == 0)
    {
        cell.imageView.image = [self imageWithImage:[UIImage imageNamed:@"activity-log.png"] convertToSize:size];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"Activity Log";
    }
    if(indexPath.row == 1)
    {
        cell.imageView.image =[self imageWithImage:[UIImage imageNamed:@"albums.png"] convertToSize:size];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"Albums";
    }
    if(indexPath.row == 2)
    {
        cell.imageView.image =[self imageWithImage:[UIImage imageNamed:@"kinnectors.png"] convertToSize:size];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"Kinnectors";
    }
    if(indexPath.row == 3)
    {
        cell.imageView.image =[self imageWithImage:[UIImage imageNamed:@"videos.png"] convertToSize:size];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"Videos";
    }
    if(indexPath.row == 4)
    {
        cell.imageView.image =[self imageWithImage:[UIImage imageNamed:@"music.png"] convertToSize:size];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"Music";
    }
    if(indexPath.row == 5)
    {
        cell.imageView.image = [self imageWithImage:[UIImage imageNamed:@"events.png"] convertToSize:size];
        cell.textLabel.text = @"Events";
        cell.backgroundColor = [UIColor clearColor];
    }
    if(indexPath.row == 6)
    {
        cell.textLabel.text = @"Help and Settings";
        cell.textLabel.backgroundColor = [UIColor clearColor];
        cell.contentView.backgroundColor = [UIColor lightGrayColor];
        
    }
    if (indexPath.row == 7) {
        cell.imageView.image=[self imageWithImage:[UIImage imageNamed:@"white-image.jpg"] convertToSize:size];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"App Settings";
    }
    if (indexPath.row == 8) {
         cell.imageView.image=[self imageWithImage:[UIImage imageNamed:@"white-image.jpg"] convertToSize:size];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"Report a Problem";
    }
    if (indexPath.row == 9) {
         cell.imageView.image=[self imageWithImage:[UIImage imageNamed:@"white-image.jpg"] convertToSize:size];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"Terms of Services";
    }
    if (indexPath.row == 10) {
         cell.imageView.image=[self imageWithImage:[UIImage imageNamed:@"white-image.jpg"] convertToSize:size];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"FAQs / Help";
    }
    if (indexPath.row == 11) {
         cell.imageView.image=[self imageWithImage:[UIImage imageNamed:@"white-image.jpg"] convertToSize:size];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = @"Contact Us";
    }
    
    return cell;
}
//resizeing the image for table cell
- (UIImage *)imageWithImage:(UIImage *)image convertToSize:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *destImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return destImage;
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
