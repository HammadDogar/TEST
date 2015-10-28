//
//  DBCell.m
//  TEST
//
//  Created by Blue Orca 05 on 05/10/2015.
//  Copyright (c) 2015 BlueOrca. All rights reserved.
//

#import "DBCell.h"

@implementation DBCell

- (void)awakeFromNib {
    // Initialization code
    self.backgroundImageView.layer.cornerRadius = 10;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
