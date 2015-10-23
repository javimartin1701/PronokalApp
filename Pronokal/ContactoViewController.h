//
//  ContactoViewController.h
//  Pronokal
//
//  Created by Javier Martin Espinosa on 8/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ContactoViewController : UIViewController{
    IBOutlet UIScrollView *scroller;
    
}

- (IBAction)llamar:(id)sender;
- (IBAction)mail:(id)sender;
- (IBAction)llegar:(id)sender;

@end
