//
//  UIImage+CornerRadius.m
//  VDCornerRadius
//
//  Created by VD on 17/1/9.
//  Copyright © 2017年 VD. All rights reserved.
//

#import "UIImage+CornerRadius.h"

@implementation UIImage(CornerRadius)

- (UIImage *)setCornerWithRadius:(CGFloat)radius andSize:(CGSize)size
{
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    UIGraphicsBeginImageContext(size);
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    
    CGContextAddPath(UIGraphicsGetCurrentContext(), path.CGPath);
    
    CGContextClip(UIGraphicsGetCurrentContext());
    
    [self drawInRect:rect];
    
    CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathStroke);
    UIImage *output = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return output;
}

@end
