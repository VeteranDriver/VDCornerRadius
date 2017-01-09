//
//  ViewController.m
//  VDCornerRadius
//
//  Created by VD on 17/1/9.
//  Copyright © 2017年 VD. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+CornerRadius.h"

@interface ViewController ()

@property(nonatomic, strong) UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.imgView];
}

- (UIImageView *)imgView {
    
    if (_imgView == nil) {
        
        CGRect rect = CGRectMake(100,100, 280, 210);
        
        _imgView = [[UIImageView alloc] initWithFrame:rect];
        _imgView.backgroundColor = [UIColor whiteColor];
        
        UIImage *img = [UIImage imageNamed:@"dog"];
        img = [img setCornerWithRadius:105 andSize:rect.size];
        
        _imgView.image = img;
    }
    
    return _imgView;
}



@end
