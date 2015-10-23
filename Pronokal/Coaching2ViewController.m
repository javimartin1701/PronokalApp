//
//  Coaching2ViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 22/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "Coaching2ViewController.h"

/*
int total;

int total2;

int total3;

int total4;
*/

@interface Coaching2ViewController ()

@end

@implementation Coaching2ViewController

-(IBAction)empezar:(id)sender{
paso1.hidden=NO;

}

-(IBAction)siguiente12:(id)sender{
    paso2.hidden=NO;
    
}

-(IBAction)siguiente23:(id)sender{
    paso3.hidden=NO;
    
}

-(IBAction)siguiente34:(id)sender{
    paso4.hidden=NO;
    
}




-(IBAction)slidetheslider:(id)sender{
    
    int valor1 = slider1.value;
    
    int valor2 = slider2.value;
    
    int valor3 = slider3.value;
    
    //total = valor1 + valor2 + valor3;
   // valor.text = [NSString stringWithFormat:@"%d", total];
    
}

-(IBAction)slidetheslider2:(id)sender{
    
    int valor4 = slider4.value;
    
    int valor5 = slider5.value;
    
    int valor6 = slider6.value;
    
    //total2 = valor4 + valor5 + valor6;
   // valor2.text = [NSString stringWithFormat:@"%d", total2];
    
}

-(IBAction)slidetheslider3:(id)sender{
    
    int valor7 = slider7.value;
    
    int valor8 = slider8.value;
    
    int valor9 = slider9.value;
    
    //total3 = valor7 + valor8 + valor9;
  //  valor3.text = [NSString stringWithFormat:@"%d", total3];
    
}

-(IBAction)slidetheslider4:(id)sender{
    
    int valor10 = slider10.value;
    
    int valor11 = slider11.value;
    
    int valor12 = slider12.value;
    
    //total4 = valor10 + valor11 + valor12;
  //  valor4.text = [NSString stringWithFormat:@"%d", total4];
    
}

-(IBAction)verResultado:(id)sender{
    resultadoFinal.hidden=NO;
    
    /*
    
    if ((total + total4)>(total2 + total3)) {
        //instrucciones
        mensajeFinal.text=@"MENSAJE FINAL 1";
    }
    
    if ((total + total4)<(total2 + total3)) {
        //instrucciones
        mensajeFinal.text=@"MENSAJE FINAL 2";
    }
    
    if ((total + total4)==(total2 + total3)) {
        //instrucciones
        mensajeFinal.text=@"MENSAJE FINAL 3";
    }
     
     */
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    paso1.hidden=YES;
    paso2.hidden=YES;
    paso3.hidden=YES;
    paso4.hidden=YES;
    resultadoFinal.hidden=YES;
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320,600)];
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
