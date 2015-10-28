//
//  DBPCell.m
//  TEST
//
//  Created by Blue Orca 05 on 12/10/2015.
//  Copyright (c) 2015 BlueOrca. All rights reserved.
//

#import "DBPCell.h"

@implementation DBPCell

- (void)awakeFromNib {
    // Initialization code
    self.backgroundImageView.layer.cornerRadius = 10;
    self.sharedPictureImageView.layer.cornerRadius = 10;
    [self.profileImageView clipsToBounds];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
