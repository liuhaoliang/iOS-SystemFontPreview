//
//  DetailViewController.h
//  查看系统自带字体
//
//  Created by 刘豪亮 on 16/2/06.
//  Copyright © 2016年 LHL. All rights reserved.
//


/*
 *********************************************************************************
 *
 * ❤️❤️❤️ 新建开发交流QQ群：555041657 ❤️❤️❤️
 *
 * 在开发过程中如果如果有什么疑问可以通过以下方式联系我，我会及时帮您解决问题的。
 * 新浪微博:HL_NetLover
 * Email : 271072547@qq.com
 * GitHub: https://github.com/MrUncle
 *
 */

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController {
    
    NSArray *title;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:1.00 green:0.99 blue:0.92 alpha:1.00];
    
    self.navigationItem.title = self.font;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width*2/3, 44)];
    [label setText:self.font];
    label.textAlignment = NSTextAlignmentCenter;
    label.adjustsFontSizeToFitWidth = YES;
    label.font = [UIFont fontWithName:self.font size:18.0f];
    self.navigationItem.titleView = label;
    
    title = [NSArray array];
    title = @[@"0 1 2 3 4 5 6 7 8 9\n",@"a b c d e f g h i j k l m n o p q r s t u v w x y z\nA B C D E F G H I J K L M N O P Q R S T U V W X Y Z",@"在开发过程中如果如果有什么疑问可以通过以下方式联系我，我会及时帮您解决问题的。\n新浪微博:HL_NetLover\nEmail : 271072547@qq.com\nGitHub: https://github.com/MrUncle\n"];
    
    [self createLabel];
}


-(void)createLabel {
    
    for (int i = 0; i < 3; i++) {
 
        float width  = [UIScreen mainScreen].bounds.size.width;
        float height = ([UIScreen mainScreen].bounds.size.height - 64)/6;
        
        UILabel *label = [[UILabel alloc] init];
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont fontWithName:self.font size:20.0f];
        [label setText:title[i]];
        label.numberOfLines = 0;
        
        if (i == 0) {
            
            label.frame = CGRectMake(0, 64, width, height);
           
        } else if (i == 1) {
            
            label.frame = CGRectMake(0, height + 64, width, height*2);
        
        } else if (i == 2) {
            
            label.frame = CGRectMake(0, height*2 + 64 + height, width, height*3);
        }
        
        [self.view addSubview:label];
    }
}


@end
