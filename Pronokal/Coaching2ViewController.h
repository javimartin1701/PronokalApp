//
//  Coaching2ViewController.h
//  Pronokal
//
//  Created by Javier Martin Espinosa on 22/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Coaching2ViewController : UIViewController{
    IBOutlet UIScrollView *scroller;
    IBOutlet UIView *paso1;
    IBOutlet UIView *paso2;
    IBOutlet UIView *paso3;
    IBOutlet UIView *paso4;
    IBOutlet UIView *resultadoFinal;
    

    IBOutlet UISlider *slider1;
    IBOutlet UISlider *slider2;
    IBOutlet UISlider *slider3;
    

    IBOutlet UISlider *slider4;
    IBOutlet UISlider *slider5;
    IBOutlet UISlider *slider6;
    

    IBOutlet UISlider *slider7;
    IBOutlet UISlider *slider8;
    IBOutlet UISlider *slider9;
    

    IBOutlet UISlider *slider10;
    IBOutlet UISlider *slider11;
    IBOutlet UISlider *slider12;
    
    IBOutlet UILabel *mensajeFinal;
    
    
    
    
    
}




-(IBAction)empezar:(id)sender;

-(IBAction)slidetheslider:(id)sender;

-(IBAction)slidetheslider2:(id)sender;

-(IBAction)slidetheslider3:(id)sender;

-(IBAction)slidetheslider4:(id)sender;

@end
