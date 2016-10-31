//
//  UIButton+category.h
//  photoEdit
//
//  Created by 赵彦杰 on 2016/10/26.
//  Copyright © 2016年 赵彦杰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (category)
+(UIButton *)initWithFrame:(CGRect)frame normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectImage;
+(UIButton *)initWithFrame:(CGRect)frame title:(NSString *)text color:(UIColor *)color fontSize:(int)size;
@end
