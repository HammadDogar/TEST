//
//  DashboardVC.m
//  TEST
//
//  Created by Blue Orca 05 on 03/10/2015.
//  Copyright (c) 2015 BlueOrca. All rights reserved.
//

#import "DashboardVC.h"
#import "DBCell.h"
#import "DBPCell.h"

static NSString * const DBCellIdentifier = @"DashboardCell";
static NSString * const DBPCellIdentifier = @"DashboardPictureCell";


@interface DashboardVC ()

@end

@implementation DashboardVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    
    [self.view setNeedsLayout];
    [self.view layoutIfNeeded];
   
    self.tableView.estimatedRowHeight = 200.0;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self.tableView reloadData];

    
}

-(void)viewDidAppear:(BOOL)animated
{
    [self.tableView reloadData];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5; //Count of rows
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
        
        return cell;
    }
    
    else{
        DBCell * cell = [tableView dequeueReusableCellWithIdentifier:DBCellIdentifier];

        cell.profileImageView.layer.cornerRadius = cell.profileImageView.frame.size.height / 2;
        
        cell.profileImageView.image = [UIImage imageNamed:@"ProfilePhoto.jpg"];
        
        return cell;
    }

   // return [self basicCellAtIndexPath:indexPath];
}

- (DBCell *)basicCellAtIndexPath:(NSIndexPath *)indexPath {
    DBCell *cell = [self.tableView dequeueReusableCellWithIdentifier:DBCellIdentifier forIndexPath:indexPath];
    [self configureBasicCell:cell atIndexPath:indexPath];
    
    cell.profileImageView.layer.cornerRadius = cell.profileImageView.frame.size.height / 2;
    
    cell.profileImageView.clipsToBounds = TRUE;
    
    return cell;
}

- (void)configureBasicCell:(DBCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    
    UIImageView * postImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 300, 200)];
    
    postImageView.image = [UIImage imageNamed:@"dashboard.jpg"];
    
   //[cell addSubview:postImageView];

//    RSSItem *item = self.feedItems[indexPath.row];
//    [self setTitleForCell:cell item:item];
//    [self setSubtitleForCell:cell item:item];
}

//- (void)setTitleForCell:(RWBasicCell *)cell item:(RSSItem *)item {
//    NSString *title = item.title ?: NSLocalizedString(@"[No Title]", nil);
//    [cell.titleLabel setText:title];
//}
//
//- (void)setSubtitleForCell:(RWBasicCell *)cell item:(RSSItem *)item {
//    NSString *subtitle = item.mediaText ?: item.mediaDescription;
//    
//    // Some subtitles can be really long, so only display the
//    // first 200 characters
//    if (subtitle.length > 200) {
//        subtitle = [NSString stringWithFormat:@"%@...", [subtitle substringToIndex:200]];
//    }
//    
//    [cell.subtitleLabel setText:subtitle];
//}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return [self heightForBasicCellAtIndexPath:indexPath];
//}

- (CGFloat)heightForBasicCellAtIndexPath:(NSIndexPath *)indexPath {
    static DBCell *sizingCell = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sizingCell = [self.tableView dequeueReusableCellWithIdentifier:DBCellIdentifier];
    });
    
    [self configureBasicCell:sizingCell atIndexPath:indexPath];

    return [self calculateHeightForConfiguredSizingCell:sizingCell];
}

- (CGFloat)calculateHeightForConfiguredSizingCell:(UITableViewCell *)sizingCell {
    [sizingCell setNeedsLayout];
    [sizingCell layoutIfNeeded];
    
    CGSize size = [sizingCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height + 1.0f; // Add 1.0f for the cell separator height
}
#pragma mark - Navigation




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
