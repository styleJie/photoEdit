//
//  CutView.h
//  photoEdit
//
//  Created by 赵彦杰 on 2016/10/26.
//  Copyright © 2016年 赵彦杰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CutView : UIView
@property(nonatomic,assign)CGRect cutArea;

-(instancetype)initWithFrame:(CGRect)frame cutArea:(CGRect)cutArea;
@end
