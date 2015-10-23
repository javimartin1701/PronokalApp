//
//  testimoniosViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 18/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "testimoniosViewController.h"

@interface testimoniosViewController ()
{
    MPMoviePlayerController *mpc;
    MPMoviePlayerController *mpc2;
    MPMoviePlayerController *mpc3;
    MPMoviePlayerController *mpc4;
}

@end

@implementation testimoniosViewController

-(IBAction)play:(id)sender{
    NSString *stringPath=[[NSBundle mainBundle]pathForResource:@"virginiaytoni" ofType:@"mp4"];
    NSURL *url= [NSURL fileURLWithPath:stringPath];
    
    mpc=[[MPMoviePlayerController alloc]initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    
    [[self view]addSubview:mpc.view];
    [mpc setFullscreen:YES];
    [mpc play];
}

-(IBAction)play2:(id)sender{
    NSString *stringPath2=[[NSBundle mainBundle]pathForResource:@"ingridconsuelo" ofType:@"mp4"];
    NSURL *url2= [NSURL fileURLWithPath:stringPath2];
    
    mpc2=[[MPMoviePlayerController alloc]initWithContentURL:url2];
    [mpc2 setMovieSourceType:MPMovieSourceTypeFile];
    
    [[self view]addSubview:mpc2.view];
    [mpc2 setFullscreen:YES];
    [mpc2 play];
}

-(IBAction)play3:(id)sender{
    NSString *stringPath3=[[NSBundle mainBundle]pathForResource:@"anamarta" ofType:@"mp4"];
    NSURL *url3= [NSURL fileURLWithPath:stringPath3];
    
    mpc3=[[MPMoviePlayerController alloc]initWithContentURL:url3];
    [mpc3 setMovieSourceType:MPMovieSourceTypeFile];
    
    [[self view]addSubview:mpc3.view];
    [mpc3 setFullscreen:YES];
    [mpc3 play];
}

-(IBAction)play4:(id)sender{
    NSString *stringPath4=[[NSBundle mainBundle]pathForResource:@"virginiaytoni" ofType:@"mp4"];
    NSURL *url4= [NSURL fileURLWithPath:stringPath4];
    
    mpc4=[[MPMoviePlayerController alloc]initWithContentURL:url4];
    [mpc4 setMovieSourceType:MPMovieSourceTypeFile];
    
    [[self view]addSubview:mpc4.view];
    [mpc4 setFullscreen:YES];
    [mpc4 play];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [scrolltestimonios setScrollEnabled:YES];
    [scrolltestimonios setContentSize:CGSizeMake(320,500)];
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
