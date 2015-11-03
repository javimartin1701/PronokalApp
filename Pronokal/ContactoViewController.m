//
//  ContactoViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 8/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "ContactoViewController.h"

@interface ContactoViewController ()

@end

@implementation ContactoViewController

- (IBAction)llamar:(id)sender
{
   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:640128291"]];
}



- (IBAction)llegar:(id)sender
{
    //NSString *url = [NSString stringWithFormat:@"http://maps.google.com/maps?ll=%f,%f", lat, lon];
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    [self openMapToLatitude:41.3931404	 longitude:2.1690308];
}

- (void)openMapToLatitude:(double)lat longitude:(double) lon
{
    NSString *url = [NSString stringWithFormat:@"http://maps.apple.com/maps?ll=%f,%f", lat, lon];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    
}

- (IBAction)mail:(id)sender {
    // Email Subject
    NSString *emailTitle = @"Contacto a través de Pronokal App";
    // Email Content
    NSString *messageBody = @"";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"info@pronokal.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)viewDidLoad {
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320,400)];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
