//
//  Clap.h
//  ClapBeat
//
//  Created by 鶴崎かんな on 2015/02/26.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import <UIKit/UIKit.h>
#import "Clap.h"

@interface Clap : NSObject

+(id)initClap;
-(id)init;
-(void)setSound;
-(void)play;
-(void)repeatClap:(int)count;



@end













