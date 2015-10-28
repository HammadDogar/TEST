//
//  ProfileVC.m
//  TEST
//
//  Created by Blue Orca 05 on 16/10/2015.
//  Copyright (c) 2015 BlueOrca. All rights reserved.
//

#import "ProfileVC.h"
#import "DBCell.h"
#import "DBPCell.h"

static NSString * const DBCellIdentifier = @"DashboardCell";
static NSString * const DBPCellIdentifier = @"DashboardPictureCell";

@interface ProfileVC ()

@end

@implementation ProfileVC

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    [self.view setNeedsLayout];
    [self.view layoutIfNeeded];
    
    self.kinnectorsButton.layer.cornerRadius = 7;
    self.albumsButton.layer.cornerRadius = 7;
    self.videosButton.layer.cornerRadius = 7;

    self.tableView.estimatedRowHeight = 200.0;
    self.tableView.rowHeight = UITableViewAutomaticDimension;

    self.topView.frame = CGRectMake(self.topView.frame.origin.x, self.topView.frame.origin.y, self.topView.frame.size.width, self.kinnectorsButton.frame.origin.y + self.kinnectorsButton.frame.size.height + 10);
    self.topProfileImageView.layer.cornerRadius = self.topProfileImageView.frame.size.width/2;
    
    self.tableView.delegate = self;
    
    [self.tableView reloadData];
    
}

- (void) viewDidAppear:(BOOL)animated
{
    [self.view layoutSubviews];
   [self.tableView reloadData];

  //  self.topView.frame = CGRectMake(self.topView.frame.origin.x, self.topView.frame.origin.y, self.topView.frame.size.width, self.kinnectorsButton.frame.origin.y + self.kinnectorsButton.frame.size.height + 20);
}

#pragma mark - TableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row >= 2) {
        DBPCell * cell = [tableView dequeueReusableCellWithIdentifier:DBPCellIdentifier];
        
        cell.profileImageView.layer.cornerRadius = cell.profileImageView.frame.size.height / 2;
        
        if (indexPath.row == 3)
        {
            cell.sharedPictureImageView.image = [UIImage imageNamed:@"iphone6plus copy.jpeg"];
        }
        [cell setNeedsUpdateConstraints];
        [cell layoutSubviews];
        cell.profileImageView.layer.cornerRadius = cell.profileImageView.frame.size.width / 2;

        return cell;
    }
    else{
        DBCell * cell = [tableView dequeueReusableCellWithIdentifier:DBCellIdentifier];
        
        cell.profileImageView.layer.cornerRadius = cell.profileImageView.frame.size.height / 2;
        
        cell.profileImageView.image = [UIImage imageNamed:@"ProfilePhoto.jpg"];
        [cell setNeedsUpdateConstraints];
        return cell;
    }
}


@end
