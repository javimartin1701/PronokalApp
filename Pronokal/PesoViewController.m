//
//  PesoViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 27/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "PesoViewController.h"

@interface PesoViewController ()

@end

@implementation PesoViewController

-(IBAction)vetGrafica:(id)sender{
    grafica.hidden=NO;
}

-(IBAction)calcular:(id)sender{
    pantallaresultado.hidden=NO;
  
    ////Calculadora IMC
    
    
    NSString *input1=peso.text;
    float speso=[input1 floatValue];
    
    NSString *input2=altura.text;
    float saltura=[input2 floatValue];
    
    NSString *input3=edad.text;
    float sedad=[input3 floatValue];
    
    NSString *resultadot;
    NSString *resultadot2;
    NSString *resultadot3;
    
    float total;
    float total2;
    float total3;
    
    
    total=speso/((saltura/100)*(saltura/100));
    total2=(saltura/100)*(saltura/100)*21.5;
    total3=speso-total2;

    resultadot=[NSString stringWithFormat:@"%.1f",total];
    resultadot2=[NSString stringWithFormat:@"%.1f",total2];
    resultadot3=[NSString stringWithFormat:@"%.1f",total3];
    
    resultado.text=resultadot;
    pesoIdeal.text=resultadot2;
    pesoPerder.text=resultadot3;
    
    
    
    NSString *website = [NSString stringWithFormat:@"http://webdemo.com.es/pnkv/svg/chart.php?sexo=m&altura=%.1f&peso=%.1f&edad=%.f", saltura, speso, sedad];
    //urlGrafica.text=website;
    
    //NSString *website = @"http://webdemo.com.es/pnkv/svg/chart.php?sexo=m&altura=170&peso=80&edad=33";
    NSURL *url = [NSURL URLWithString:website];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [grafica loadRequest:request];

    
    
    
 
    
    
    
    
    
    /*
    if (total<18.5) {
        flechabajopeso.hidden=NO;
        textobajopeso.hidden=NO;
    }
    
    if (total<24.99 && total>18.51) {
        flechanormal.hidden=NO;
        textonormal.hidden=NO;
    }
    
    if (total<26.99 && total>25) {
        flechasobrepeso.hidden=NO;
        textosobrepeso.hidden=NO;
    }
    
    if (total<29.99 && total>27) {
        flechapreobesidad.hidden=NO;
        textopreobesidad.hidden=NO;
    }
    
    if (total>30) {
        flechaobesidad.hidden=NO;
        textoobesidad.hidden=NO;
    }
     
     */
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
  
    
    pantallaresultado.hidden=YES;
    grafica.hidden=YES;
    
    [scrollcalc setScrollEnabled:YES];
    [scrollcalc setContentSize:CGSizeMake(320,600)];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ocultaTeclado:)];
    [tapGesture setNumberOfTouchesRequired:1];
    [[self view] addGestureRecognizer:tapGesture];
    
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)ocultaTeclado:(UITapGestureRecognizer *)sender{
    //Aquí hay que declarar todos los UITextField de nuestra escena
    [peso resignFirstResponder];
    [altura resignFirstResponder];
    [edad resignFirstResponder];
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
