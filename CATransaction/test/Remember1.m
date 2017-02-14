//
//  Remember1.m
//  test
//
//  Created by yanzhen on 17/2/9.
//  Copyright © 2017年 v2tech. All rights reserved.
//

#import "Remember1.h"

@implementation Remember1
/*
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

 
 
 */
@end
