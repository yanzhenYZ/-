//
//  Remember.m
//  test
//
//  Created by yanzhen on 17/2/8.
//  Copyright © 2017年 v2tech. All rights reserved.
//

#import "Remember.h"

@implementation Remember

/*
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
 */



@end
