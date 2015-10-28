//
//  DashboardVC.h
//  TEST
//
//  Created by Blue Orca 05 on 03/10/2015.
//  Copyright (c) 2015 BlueOrca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardVC : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
