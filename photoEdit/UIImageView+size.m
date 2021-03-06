//
//  UIImageView+size.m
//  photoEdit
//
//  Created by 赵彦杰 on 2016/10/26.
//  Copyright © 2016年 赵彦杰. All rights reserved.
//

#import "UIImageView+size.h"

#define device_width   [UIScreen mainScreen].bounds.size.width
#define device_height  [UIScreen mainScreen].bounds.size.height

@implementation UIImageView (size)

+(CGSize)getScale:(UIImage*)image{
    
    float width = image.size.width;
    
    float height = image.size.height;
    
    if(width>height){
        
        if(width>device_width){
            
            return CGSizeMake(device_width/width*width, device_width/width*height);
        }
    }else{
        if(height>device_width){
            return CGSizeMake(device_width/height*width, device_width/height*height);
        }
    }
    
    return image.size;
}

+(UIImageView*)image:(UIImage *)image{
    
    CGSize size = [self getScale:image];
    UIImageView *imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0,size.width,size.height)];
    
    imageV.image = image;
    
    return imageV;
}
@end
