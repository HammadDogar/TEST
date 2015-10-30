//
//  Firstpage.m
//  Application Interface
//
//  Created by Blue Orca 03 on 30/09/2015.
//  Copyright (c) 2015 Blue Orca 03. All rights reserved.
//

#import "Firstpage.h"

@interface Firstpage ()

@end

@implementation Firstpage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _signin_button.layer.cornerRadius =5;
    _signup_button.layer.cornerRadius =5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
