//
//  ProfileVC.h
//  TEST
//
//  Created by Blue Orca 05 on 16/10/2015.
//  Copyright (c) 2015 BlueOrca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileVC : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UIImageView *topProfileImageView;


@property (weak, nonatomic) IBOutlet UIButton * kinnectorsButton;
@property (weak, nonatomic) IBOutlet UIButton * albumsButton;
@property (weak, nonatomic) IBOutlet UIButton * videosButton;

@end
