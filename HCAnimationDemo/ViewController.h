//
//  ViewController.h
//  HCAnimationDemo
//
//  Created by Caoyq on 16/5/31.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UIButton *btn2;
@property (strong, nonatomic) IBOutlet UIButton *btn3;

@property (strong, nonatomic) IBOutlet UIButton *btn4;
@property (strong, nonatomic) IBOutlet UIButton *btn5;
@property (strong, nonatomic) IBOutlet UIButton *btn6;

- (IBAction)btn1Clicked:(id)sender;
- (IBAction)btn2Clicked:(id)sender;
- (IBAction)btn3Clicked:(id)sender;
- (IBAction)btn4Clicked:(id)sender;
- (IBAction)btn5Clicked:(id)sender;
- (IBAction)btn6Clicked:(id)sender;

@end

