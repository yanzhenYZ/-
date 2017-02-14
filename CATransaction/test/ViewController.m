//
//  ViewController.m
//  test
//
//  Created by yanzhen on 17/2/7.
//  Copyright © 2017年 v2tech. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Add.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define V2Color(R,G,B) [UIColor colorWithRed:(R)/255.0 green:(G)/255.0 blue:(B)/255.0 alpha:1]

@interface ViewController ()<CAAnimationDelegate>
@property (nonatomic, strong) UIButton *firstBtn;
@property (nonatomic, strong) UIButton *secondBtn;
@property (nonatomic, strong) UIButton *thirdBtn;
@end

@implementation ViewController
- (void)click{
    NSLog(@"99999");
//    [self.firstBtn.layer removeAllAnimations];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = V2Color(240, 240, 240);
    
    self.firstBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 400, 220)];
    self.firstBtn.center = CGPointMake(WIDTH * 0.5, 200);
    self.firstBtn.backgroundColor = V2Color(232, 93, 110);
    [self.firstBtn setTitle:@"ABCDE" forState:UIControlStateNormal];
    [_firstBtn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.firstBtn];
    
    
    [self.firstBtn setBackgroundImage:[UIImage imageNamed:@"2"] forState:UIControlStateNormal];
    ///
    self.secondBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.firstBtn.x, self.firstBtn.maxY + 30, 200, 110)];
    self.secondBtn.backgroundColor = V2Color(134, 118, 183);
    [self.secondBtn setTitle:@"@@@@@@@" forState:UIControlStateNormal];
    [self.view addSubview:self.secondBtn];
    ///
    self.thirdBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.secondBtn.maxX, self.firstBtn.maxY + 30, 200, 110)];
    self.thirdBtn.backgroundColor = V2Color(72, 188, 251);
    [self.thirdBtn setTitle:@"#######" forState:UIControlStateNormal];
    [self.view addSubview:self.thirdBtn];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self test];
    
}

- (void)test{
    [CATransaction begin];
    [CATransaction setAnimationDuration:5.0];
    [CATransaction setAnimationTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [CATransaction setDisableActions:YES]; //设置为YES就关闭动画
    self.secondBtn.layer.bounds = self.firstBtn.layer.bounds;
    [CATransaction commit];
    [CATransaction setCompletionBlock:^{
        NSLog(@"--- %s ---",__func__);
    }];
}

- (void)animationDidStart:(CAAnimation *)anim{
    NSLog(@"-------------");
    
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    NSLog(@"=============%@",[anim valueForKey:@"scaleX"]);
    NSLog(@"%@",NSStringFromCGRect(self.secondBtn.frame));
}

@end
