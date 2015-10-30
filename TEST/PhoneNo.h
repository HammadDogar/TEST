//
//  PhoneNo.h
//  Application Interface
//
//  Created by Blue Orca 03 on 30/09/2015.
//  Copyright (c) 2015 Blue Orca 03. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhoneNo : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *verification_button;
@property (weak, nonatomic) IBOutlet UITextField *phoneno_textbox;
@property (weak, nonatomic) IBOutlet UITextField *code_textbox;
@property (weak, nonatomic) IBOutlet UIPickerView *code_picker;
@property(strong,atomic) NSMutableArray* CountryNameArray;
@property (weak, nonatomic) IBOutlet UIImageView *temp_imageview;
@property(strong,atomic) NSMutableArray* CountryCodeArray;

@end
