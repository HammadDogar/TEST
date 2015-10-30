//
//  PhoneNo.m
//  Application Interface
//
//  Created by Blue Orca 03 on 30/09/2015.
//  Copyright (c) 2015 Blue Orca 03. All rights reserved.
//

#import "PhoneNo.h"

@interface PhoneNo ()

@end

@implementation PhoneNo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    _temp_imageview.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
//    
//    [self.view bringSubviewToFront:self.temp_imageview];
//    
    
    _verification_button.layer.cornerRadius =5;
    _phoneno_textbox.borderStyle=UITextBorderStyleRoundedRect;
    _code_textbox.borderStyle=UITextBorderStyleRoundedRect;
    
    _CountryNameArray =  [[NSMutableArray alloc]init];
    _CountryCodeArray = [[NSMutableArray alloc]init];
    NSString* path = [[NSBundle mainBundle]pathForResource:@"countries" ofType:@"json"];
    NSError *error = nil; // This so that we can access the error if something goes wrong
    NSData *JSONData = [NSData dataWithContentsOfFile:path options:NSDataReadingMappedIfSafe error:&error];
    NSArray* json = [NSJSONSerialization JSONObjectWithData:JSONData
                                                    options:kNilOptions
                                                      error:&error];
    
    for (int i = 0; i < [json count]; i++) {
        NSDictionary* array = json[i];
        [_CountryNameArray addObject:[array objectForKey:@"name"]];
        [_CountryCodeArray addObject:[array objectForKey:@"dial_code"]];
    }
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
{
    return _CountryNameArray.count;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    _code_textbox.text = _CountryCodeArray[row];
    NSLog(@"%@",_CountryCodeArray[row]);
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *countryName = [_CountryNameArray objectAtIndex:row];
    NSString *countryCode = [_CountryCodeArray objectAtIndex:row];
    return [NSString stringWithFormat:@"%@ %@", countryName, countryCode, nil];
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
