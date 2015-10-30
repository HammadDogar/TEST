//
//  EventDetailView-ViewController.h
//  Application Interface
//
//  Created by Blue Orca 03 on 20/10/2015.
//  Copyright (c) 2015 Blue Orca 03. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftMenuViewController.h"
#import "RghtPanel_ViewController.h"
@interface EventDetailView_ViewController : UIViewController
- (IBAction)leftpanel:(id)sender;
- (IBAction)rightpanel:(id)sender;

@property  LeftMenuViewController *obj;
@property RghtPanel_ViewController *right_menu;
@end
