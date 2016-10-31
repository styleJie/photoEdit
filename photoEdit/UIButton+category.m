//
//  UIButton+category.m
//  photoEdit
//
//  Created by 赵彦杰 on 2016/10/26.
//  Copyright © 2016年 赵彦杰. All rights reserved.
//

#import "UIButton+category.h"

@implementation UIButton (category)

+(UIButton *)initWithFrame:(CGRect)frame normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectImage{
    
    UIButton *button = [self createButton:frame];
    
    [button setBackgroundImage:normalImage forState:UIControlStateNormal];
    
    [button setBackgroundImage:selectImage forState:UIControlStateSelected];
    
    return button;
}
+(UIButton *)initWithFrame:(CGRect)frame title:(NSString *)text color:(UIColor *)color fontSize:(int)size{
    UIButton *button = [self createButton:frame];
    [button setTitle:text forState:UIControlStateNormal];
    
    [button setTitleColor:color forState:UIControlStateNormal];
    
    button.titleLabel.font = [UIFont systemFontOfSize:size];
    
    return button;
}
+(UIButton *)createButton:(CGRect)frame{

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.frame = frame;
    
    
    return button;
    
}
@end
