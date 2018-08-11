//
//  DemoViewController.h
//  ChXBlockDemo
//
//  Created by Xu Chen on 2018/8/11.
//  Copyright © 2018年 xu.yzl. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 1. 代理传值
 */
@protocol DemoViewDelegate <NSObject>
- (void)configureButtonDidSelected:(NSString *)backString;
@end

/**
 2. 第一种创建 Block 的方式
 */
typedef void(^OneBlock)(NSString *backString);

@interface DemoViewController : UIViewController
@property (nonatomic, weak) id <DemoViewDelegate> viewDelegate;
@property (nonatomic, copy) OneBlock oneBlock;

/**
 3. 第二种创建 Block 的方式
 */
@property (nonatomic, strong) void(^TwoBlock)(NSString *backString);

/**
 4. block 作为参数，用于反向传值
 推荐使用，和 Swift 中闭包是一样的
 */
- (void)getDataFromNextView:(void(^)(NSString *))completion;

@end
