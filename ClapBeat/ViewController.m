//
//  ViewController.m
//  ClapBeat
//
//  Created by 鶴崎かんな on 2015/02/23.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
    // Do any additional setup after loading the view, typically from a nib.



    // Dispose of any resources that can be recreated.


- (void)viewDidLoad {
	[super viewDidLoad];
	ClapInstance = [Clap initClap];
	repeatCount = 1;
	for (int i = 0; i < 10; i++){
		NSString *numberText = [NSString stringWithFormat: @"%d回", i+1];
		repeatNumbersForPicker[i] = numberText;
	}
}

-(NSInteger)numberOfComponentsInPickerView:
				(UIPickerView *)thePickerView{
	return 1;
	}

-(NSInteger)pickerView:(UIPickerView *)thePickerView
			numberOfRowsInComponent:(NSInteger)component{
	return 10;
}


-(NSString *)pickerView:(UIPickerView *)thePickerView
titleForRow:(NSInteger)row forComponent:(NSInteger)component{
	 return repeatNumbersForPicker[row];
}
 

-(void)pickerView:(UIPickerView *)thePickerView
		didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
			repeatCount = row + 1;
}
	
-(IBAction)play:(id)sender{
		
	[ClapInstance repeatClap:repeatCount];
}

@end
