//
//  Actividad1ViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 16/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "Actividad1ViewController.h"

@interface Actividad1ViewController ()

@end

@implementation Actividad1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [scrollactividad setScrollEnabled:YES];
    [scrollactividad setContentSize:CGSizeMake(320,600)];
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
