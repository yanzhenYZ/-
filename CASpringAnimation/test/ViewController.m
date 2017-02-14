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
/*
    mass：质量（影响弹簧的惯性，质量越大，弹簧惯性越大，运动的幅度越大）
 　　stiffness：弹性系数（弹性系数越大，弹簧的运动越快）
 　　damping：阻尼系数（阻尼系数越大，弹簧的停止越快）
 　　initialVelocity：初始速率（弹簧动画的初始速度大小，弹簧运动的初始方向与初始速率的正负一致，若初始速率为0，表示忽略该属性）
 　　settlingDuration：结算时间（根据动画参数估算弹簧开始运动到停止的时间，动画设置的时间最好根据此时间来设置）
 */

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
    [self springAnimation];
    
}

- (void)animationDidStart:(CAAnimation *)anim{
    NSLog(@"-------------");
    
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    NSLog(@"=============%@",[anim valueForKey:@"scaleX"]);
    NSLog(@"%@",NSStringFromCGRect(self.secondBtn.frame));
}

- (void)springAnimation{
    CASpringAnimation *animation = [CASpringAnimation animationWithKeyPath:@"bounds"];
    animation.mass = 100.0; //质量，影响图层运动时的弹簧惯性，质量越大，弹簧拉伸和压缩的幅度越大
//    animation.stiffness = 5000; //刚度系数(劲度系数/弹性系数)，刚度系数越大，形变产生的力就越大，运动越快
    animation.damping = 100.0;//阻尼系数，阻止弹簧伸缩的系数，阻尼系数越大，停止越快
    animation.initialVelocity = -1;//初始速率，动画视图的初始速度大小;速率为正数时，速度方向与运动方向一致，速率为负数时，速度方向与运动方向相反
    animation.duration = animation.settlingDuration;
    animation.toValue = [NSValue valueWithCGRect:self.firstBtn.bounds];
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animation.delegate = self;
    [self.secondBtn.layer addAnimation:animation forKey:@"boundsAni"];
}

@end
