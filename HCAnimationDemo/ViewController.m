//
//  ViewController.m
//  HCAnimationDemo
//
//  Created by Caoyq on 16/5/31.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import "ViewController.h"
#import "CAAnimation+HCAnimation.h"

#define kBtnTag             0
#define kBtnSelectedTag     1

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.btn1.tag = kBtnTag;
    self.btn2.tag = kBtnTag;
    self.btn3.tag = kBtnTag;
    self.btn4.tag = kBtnTag;
    self.btn5.tag = kBtnTag;
    self.btn6.tag = kBtnTag;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

///缩放动画
- (IBAction)btn1Clicked:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == kBtnTag) {
        [CAAnimation showScaleAnimationInView:btn ScaleValue:1.5 Repeat:0 Duration:0.8];
    }else{
        [CAAnimation clearAnimationInView:btn];
    }
    btn.tag = btn.tag == kBtnTag ? kBtnSelectedTag : kBtnTag;
}

///渐变动画
- (IBAction)btn2Clicked:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == kBtnTag) {
        [CAAnimation showOpacityAnimationInView:btn Alpha:0.1 Repeat:0 Duration:0.6];
    }else{
        [CAAnimation clearAnimationInView:btn];
    }
    btn.tag = btn.tag == kBtnTag ? kBtnSelectedTag : kBtnTag;
}

///左右震动动画
- (IBAction)btn3Clicked:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == kBtnTag) {
        [CAAnimation showShakeAnimationInView:btn Offset:10.0 Direction:ShakeDerectionAxisX Repeat:0 Duration:0.5];
    }else{
        [CAAnimation clearAnimationInView:btn];
    }
    btn.tag = btn.tag == kBtnTag ? kBtnSelectedTag : kBtnTag;
}

///移动动画
- (IBAction)btn4Clicked:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == kBtnTag) {
        [CAAnimation showMoveAnimationInView:btn Position:CGPointMake(btn.layer.position.x*2, btn.layer.position.y) Repeat:0 Duration:0.8];
    }else{
        [CAAnimation clearAnimationInView:btn];
    }
    btn.tag = btn.tag == kBtnTag ? kBtnSelectedTag : kBtnTag;
}

///组合动画
- (IBAction)btn5Clicked:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == kBtnTag) {
        [CAAnimation showScaleAnimationInView:btn ScaleValue:1.5 Repeat:0 Duration:1.0];
        [CAAnimation showOpacityAnimationInView:btn Alpha:0.3 Repeat:0 Duration:1.0];
        [CAAnimation showMoveAnimationInView:btn Position:self.btn1.layer.position Repeat:0 Duration:1.0];
        [CAAnimation showRotateAnimationInView:btn Degree:2*M_PI Direction:AxisZ Repeat:0 Duration:1.0];
    }else{
        [CAAnimation clearAnimationInView:btn];
    }
    btn.tag = btn.tag == kBtnTag ? kBtnSelectedTag : kBtnTag;
}

///旋转动画
- (IBAction)btn6Clicked:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == kBtnTag) {
        [CAAnimation showRotateAnimationInView:btn Degree:2*M_PI Direction:AxisY Repeat:0 Duration:1.0];
    }else{
        [CAAnimation clearAnimationInView:btn];
    }
    btn.tag = btn.tag == kBtnTag ? kBtnSelectedTag : kBtnTag;
}
@end
