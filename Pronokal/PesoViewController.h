//
//  PesoViewController.h
//  Pronokal
//
//  Created by Javier Martin Espinosa on 27/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PesoViewController : UIViewController{
    IBOutlet UIScrollView *scrollcalc;
    IBOutlet UITextField *peso;
    IBOutlet UITextField *altura;
    IBOutlet UITextField *edad;
    IBOutlet UILabel *resultado;
    
    IBOutlet UILabel *pesoIdeal;
    IBOutlet UILabel *pesoPerder;
    
    IBOutlet UIView *pantallaresultado;
}

-(IBAction)calcular:(id)sender;

@end
