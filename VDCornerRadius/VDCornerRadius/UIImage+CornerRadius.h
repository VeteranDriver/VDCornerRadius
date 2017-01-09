//
//  UIImage+CornerRadius.h
//  VDCornerRadius
//
//  Created by VD on 17/1/9.
//  Copyright © 2017年 VD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CornerRadius)

/**
 设置图片圆角

 @param radius 角度
 @param size 需要的图片尺寸
 @return 裁剪好的图片
 */
- (UIImage *)setCornerWithRadius:(CGFloat)radius andSize:(CGSize)size;

@end
