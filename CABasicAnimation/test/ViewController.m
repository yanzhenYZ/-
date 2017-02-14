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
    [self opacity];
}

- (void)animationDidStart:(CAAnimation *)anim{
    NSLog(@"-------------");
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    NSLog(@"=============%@",[anim valueForKey:@"scaleX"]);
    NSLog(@"%@",NSStringFromCGRect(self.firstBtn.frame));
}
//opacity
//backgroundColor
//cornerRadius
//borderWidth
//contents
//Shadow Key Path:
//shadowColor
//shadowOffset
//shadowOpacity
//shadowRadius

#pragma mark - opacity
- (void)opacity{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    //1-2对比
    //1
    animation.removedOnCompletion = NO;
    animation.toValue = @0.3;
    animation.delegate = self;
    animation.duration = 2;
    //2
    //    animation.autoreverses = YES;
    [animation setValue:@"1234-O" forKey:@"opacity"];
    [self.firstBtn.layer addAnimation:animation forKey:@"opacity"];
}
#pragma mark - bounds
- (void)boundsH{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"bounds.size.height"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    //1-2对比
    //1
    animation.removedOnCompletion = NO;
    animation.toValue = @150;
    animation.delegate = self;
    animation.duration = 2;
    //2
    //    animation.autoreverses = YES;
    [animation setValue:@"1234-H" forKey:@"boundsH"];
    [self.firstBtn.layer addAnimation:animation forKey:@"boundsH"];
}

- (void)boundsW{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"bounds.size.width"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    //1-2对比
    //1
    animation.removedOnCompletion = NO;
    animation.toValue = @150;
    animation.delegate = self;
    animation.duration = 2;
    //2
    //    animation.autoreverses = YES;
    [animation setValue:@"1234-W" forKey:@"boundsW"];
    [self.firstBtn.layer addAnimation:animation forKey:@"boundsW"];
}



#pragma mark - translation
- (void)translationZ{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.translation.z"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    //1-2对比
    //1
    animation.removedOnCompletion = NO;
    animation.toValue = @150;
    animation.delegate = self;
    animation.duration = 2;
    //2
    //    animation.autoreverses = YES;
    [animation setValue:@"1234-Z" forKey:@"translationZ"];
    [self.firstBtn.layer addAnimation:animation forKey:@"translationZ"];
}

- (void)translationY{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.translation.y"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    //1-2对比
    //1
    animation.removedOnCompletion = NO;
    animation.toValue = @150;
    animation.delegate = self;
    animation.duration = 2;
    //2
    //    animation.autoreverses = YES;
    [animation setValue:@"1234-Y" forKey:@"translationY"];
    [self.firstBtn.layer addAnimation:animation forKey:@"translationY"];
}

- (void)translationX{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    //1-2对比
    //1
    animation.removedOnCompletion = NO;
    animation.toValue = @150;
    animation.delegate = self;
    animation.duration = 2;
    //2
    //    animation.autoreverses = YES;
    [animation setValue:@"1234-X" forKey:@"translationX"];
    [self.firstBtn.layer addAnimation:animation forKey:@"translationX"];
}

- (void)translationXYZ{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    //1-2对比
    //1
    animation.removedOnCompletion = NO;
    animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeTranslation(50, 0, 0)];
    animation.delegate = self;
    animation.duration = 2;
    //2
    //    animation.autoreverses = YES;
    [animation setValue:@"1234-XYZ" forKey:@"translationXYZ"];
    [self.firstBtn.layer addAnimation:animation forKey:@"translationXYZ"];
    
}

#pragma mark - scale
- (void)scaleZ{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale.z"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    animation.toValue = @0.5;
    animation.delegate = self;
    animation.duration = 2;
    //    animation.autoreverses = YES;
    [animation setValue:@"1234-Z" forKey:@"scaleZ"];
    [self.firstBtn.layer addAnimation:animation forKey:@"scaleZ"];
    
}

- (void)scaleY{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale.y"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    animation.toValue = @0.5;
    animation.delegate = self;
    animation.duration = 2;
    //    animation.autoreverses = YES;
    [animation setValue:@"1234-y" forKey:@"scaley"];
    [self.firstBtn.layer addAnimation:animation forKey:@"scaley"];
    
}

- (void)scaleX{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale.x"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    animation.toValue = @1.5;
    animation.delegate = self;
    animation.duration = 2;
    //    animation.autoreverses = YES;
    [animation setValue:@"1234-X" forKey:@"scaleX"];
    [self.firstBtn.layer addAnimation:animation forKey:@"scaleX"];
    
}

- (void)scaleXYZ{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    //1-2对比
    //1
    animation.removedOnCompletion = NO;
    animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.5, 0.5, 0.1)];
    animation.delegate = self;
    animation.duration = 2;
    //2
//    animation.autoreverses = YES;
    [animation setValue:@"1234-XYZ" forKey:@"scaleXYZ"];
    [self.firstBtn.layer addAnimation:animation forKey:@"scaleXYZ"];
    
}


#pragma mark - Rotation
/***********  1111  ************/
- (void)rotationXYZ{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fillMode = kCAFillModeForwards;
    //1-2对比
    //1
    animation.removedOnCompletion = NO;
    animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI, 1, 0, 0)];
    animation.delegate = self;
    animation.duration = 2;
    //2
    //    animation.autoreverses = YES;
    [animation setValue:@"1234-XYZ" forKey:@"rotationXYZ"];
    [self.firstBtn.layer addAnimation:animation forKey:@"rotationXYZ"];
}

- (void)rotationZ{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    //    animation.fromValue = @0;
    animation.byValue = @M_PI;
    animation.delegate = self;
    animation.duration = 2;
    [animation setValue:@"1234Z" forKey:@"rotationZ"];
//    animation.autoreverses = YES;
//    animation.repeatCount = CGFLOAT_MAX;
    [self.firstBtn.layer addAnimation:animation forKey:@"1243Z"];
    
}

- (void)rotationY{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    //    animation.removedOnCompletion = NO;
    //    animation.fromValue = @0;
    animation.byValue = @M_PI;
    animation.delegate = self;
    animation.duration = 2;
    [animation setValue:@"1234Y" forKey:@"rotationY"];
    [self.firstBtn.layer addAnimation:animation forKey:@"1243X"];
    
}

- (void)rotationX{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
//    animation.removedOnCompletion = NO;
//    animation.fromValue = @0;
    animation.toValue = @M_PI;
    animation.delegate = self;
    animation.duration = 2;
    [animation setValue:@"1234X" forKey:@"rotationX"];
    [self.firstBtn.layer addAnimation:animation forKey:@"1243X"];

}



#pragma mark - position==center
- (void)positionY{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position.y"];
    animation.toValue = @(self.firstBtn.center.y);
    animation.removedOnCompletion = NO;
    animation.delegate = self;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [animation setValue:@"1234Y" forKey:@"positionY"];
    [self.secondBtn.layer addAnimation:animation forKey:@"1243"];
}

- (void)positionX{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position.x"];
    animation.toValue = @(self.firstBtn.center.x);
    animation.removedOnCompletion = NO;
    animation.delegate = self;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [animation setValue:@"1234x" forKey:@"positionX"];
    [self.secondBtn.layer addAnimation:animation forKey:@"1243"];
}

- (void)positionXY{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.toValue = [NSValue valueWithCGPoint:self.firstBtn.center];
    animation.removedOnCompletion = NO;
    animation.delegate = self;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [animation setValue:@"1234576" forKey:@"positionXY"];
    [self.secondBtn.layer addAnimation:animation forKey:@"1243"];
}

@end
