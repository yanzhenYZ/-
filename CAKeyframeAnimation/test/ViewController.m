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

/*1
 *removedOnCompletion
 默认为YES，代表动画执行完毕后就从图层上移除，图形会恢复到动画执行前的状态。如果想让图层保持显示动画执行后的状态，那就设置为NO，不过还要设置fillMode为kCAFillModeForwards
 */

/*2
 *fillMode
 *kCAFillModeRemoved 这个是默认值，也就是说当动画开始前和动画结束后，动画对layer都没有影响，动画结束后，layer会恢复到之前的状态

 *kCAFillModeForwards 当动画结束后，layer会一直保持着动画最后的状态

 *kCAFillModeBackwards 在动画开始前，只需要将动画加入了一个layer，layer便立即进入动画的初始状态并等待动画开始。

 *kCAFillModeBoth 这个其实就是上面两个的合成.动画加入后开始之前，layer便处于动画初始状态，动画结束后layer保持动画最后的状态
*/

/*3
 *CAMediaTimingFunction
 
 *kCAMediaTimingFunctionLinear（线性）：匀速，给你一个相对静态的感觉
 
 *kCAMediaTimingFunctionEaseIn（渐进）：动画缓慢进入，然后加速离开
 
 *kCAMediaTimingFunctionEaseOut（渐出）：动画全速进入，然后减速的到达目的地
 
 *kCAMediaTimingFunctionEaseInEaseOut（渐进渐出）：动画缓慢的进入，中间加速，然后减速的到达目的地。这个是默认的动画行为。
 
 */

/*4
 *autoreverses
 *按原路径返回
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
    [self scaleXY];
}

- (void)animationDidStart:(CAAnimation *)anim{
    NSLog(@"-------------");
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    NSLog(@"=============%@",[anim valueForKey:@"scaleX"]);
    NSLog(@"%@",NSStringFromCGRect(self.firstBtn.frame));
}
#pragma mark - valuesKey -- scale
- (void)scaleXY{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.duration = 4.0;
    
    NSValue *value1 = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.3, 0.3, 1)];
    NSValue *value2 = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.5, 0.5, 1)];
    NSValue *value3 = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1, 1, 1)];
    NSValue *value4 = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.5, 1.5, 1)];
    NSValue *value5 = [NSValue valueWithCATransform3D:CATransform3DMakeScale(2, 2, 1)];
    animation.values = @[value1, value2, value3, value4, value5];
    [self.firstBtn.layer addAnimation:animation forKey:@"valueKeyframeAnimation"];
}

- (void)scaleX{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.x"];
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.duration = 4.0;
    
    NSValue *value1 = @0.3;
    NSValue *value2 = @0.5;
    NSValue *value3 = @1.0;
    NSValue *value4 = @1.5;
    NSValue *value5 = @2.0;
    animation.values = @[value1, value2, value3, value4, value5];
    [self.firstBtn.layer addAnimation:animation forKey:@"valueKeyframeAnimation"];
}

- (void)scaleY{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.y"];
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.duration = 4.0;
    
    NSValue *value1 = @0.3;
    NSValue *value2 = @0.5;
    NSValue *value3 = @1.0;
    NSValue *value4 = @1.5;
    NSValue *value5 = @2.0;
    animation.values = @[value1, value2, value3, value4, value5];
    [self.firstBtn.layer addAnimation:animation forKey:@"valueKeyframeAnimation"];
}
#pragma mark - valueKey -- position
- (void)valueKeyframeAnimation{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.duration = 4.0;
    
    NSValue *value1 = [NSValue valueWithCGPoint:CGPointMake(250, 200)];
    NSValue *value2 = [NSValue valueWithCGPoint:CGPointMake(750, 200)];
    NSValue *value3 = [NSValue valueWithCGPoint:CGPointMake(750, 550)];
    NSValue *value4 = [NSValue valueWithCGPoint:CGPointMake(250, 550)];
    NSValue *value5 = [NSValue valueWithCGPoint:CGPointMake(250, 200)];
    animation.values = @[value1, value2, value3, value4, value5];
    [self.firstBtn.layer addAnimation:animation forKey:@"valueKeyframeAnimation"];
}

- (void)pathKeyframeAnimation {
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(WIDTH * 0.5, HEIGHT * 0.5) radius:200 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    animation.path = path.CGPath;
    
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathAddEllipseInRect(path, NULL, CGRectMake(250, 200, 300, 300));
//    animation.path = path;
//    CGPathRelease(path);
    
    
    animation.duration = 4.0;
    [self.firstBtn.layer addAnimation:animation forKey:@"pathKeyframeAnimation"];
}
@end
