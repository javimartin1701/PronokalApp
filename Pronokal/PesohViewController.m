//
//  PesohViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 27/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "PesohViewController.h"

@interface PesohViewController ()

@end

@implementation PesohViewController

-(IBAction)vetGrafica:(id)sender{
    grafica.hidden=NO;
    pantallagrafica.hidden=NO;
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
    NSString *resultadot4;
    
    float total;
    float total2;
    float total3;
    
    float duracionTratamiento;
    float duracionRed=0.0;
    float duracionTemp;
    
    
    total=speso/((saltura/100)*(saltura/100));
    total2=(saltura/100)*(saltura/100)*24;
    total3=speso-total2;
    
    duracionTemp=total3*(100/80);
    
    
    
    if (duracionTemp<10) {
        duracionRed=8;
    }
    
    if (duracionTemp>10 && duracionTratamiento<=15) {
        duracionRed=10;
    }
    
    if (duracionTemp>15 && duracionTratamiento<=20) {
        duracionRed=12;
    }
    
    if (duracionTemp>20 && duracionTratamiento<=25) {
        duracionRed=14;
    }
    
    if (duracionTemp>25 && duracionTratamiento<=30) {
        duracionRed=16;
    }
    
    if (duracionTemp>30) {
        duracionRed=20;
    }
    
    duracionTratamiento=(total3*0.4/2.6)+(total3*0.2/2.35)+(total3*0.2/2.25)+duracionRed;
    
    int duracionRound = lroundf(duracionTratamiento);
    
    resultadot=[NSString stringWithFormat:@"%.1f",total];
    resultadot2=[NSString stringWithFormat:@"%.1f",total2];
    resultadot3=[NSString stringWithFormat:@"%.1f",total3];
    resultadot4=[NSString stringWithFormat:@"%d",duracionRound];
    
    resultado.text=resultadot;
    pesoIdeal.text=resultadot2;
    pesoPerder.text=resultadot3;
    duracion.text=resultadot4;
    
    
    
    
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
    pantallagrafica.hidden=YES;
    
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

