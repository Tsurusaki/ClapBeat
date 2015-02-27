//
//  ViewController.h
//  ClapBeat
//
//  Created by 鶴崎かんな on 2015/02/23.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>
{
	Clap *clapInstance;
	IBOutlet UIPickerView *clapPickerView;
	NSString *repeatNumbersForPicker [10];
	int repeatCount;
	
}
-(IBAction)play:(id)sender;



@end


