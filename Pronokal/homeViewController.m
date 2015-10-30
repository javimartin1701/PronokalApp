//
//  homeViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 30/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "homeViewController.h"

@interface homeViewController ()

@end

@implementation homeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)updateViewConstraints
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        
        CGSize iOSDeviceScreenSize = [[UIScreen mainScreen] bounds].size;
        
        //----------------HERE WE SETUP FOR IPHONE 4/4s/iPod----------------------
        
        if(iOSDeviceScreenSize.height == 480){
            NSLog(@"iPhone 4: %f", iOSDeviceScreenSize.height);
            
            [super updateViewConstraints];
            [principal addConstraint:[NSLayoutConstraint constraintWithItem:medicos
                                                                  attribute:NSLayoutAttributeBottom
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:principal
                                                                  attribute:NSLayoutAttributeBottom
                                                                 multiplier:1.0
                                                                   constant:10]];
        }
        
        else{
            NSLog(@"iPhone 5: %f", iOSDeviceScreenSize.height);
            
            [super updateViewConstraints];
            [principal addConstraint:[NSLayoutConstraint constraintWithItem:medicos
                                                                  attribute:NSLayoutAttributeBottom
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:principal
                                                                  attribute:NSLayoutAttributeBottom
                                                                 multiplier:1.0
                                                                   constant:-49]];

            
        }
        
    }

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
