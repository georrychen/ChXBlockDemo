//
//  DemoViewController.m
//  ChXBlockDemo
//
//  Created by Xu Chen on 2018/8/11.
//  Copyright © 2018年 xu.yzl. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()
@end

@implementation DemoViewController

- (IBAction)delegateClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    if (self.viewDelegate &&
        [self.viewDelegate respondsToSelector:@selector(configureButtonDidSelected:)]) {
        [self.viewDelegate configureButtonDidSelected:@"代理方法传过来的值！"];
    }
}
- (IBAction)blockOneClicked:(id)sender {
    if (self.oneBlock) {
        self.oneBlock(@"第一种创建Block传的值！");
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)blockTwoClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    if (self.twoBlock) {
        self.TwoBlock(@"第二种创建Block传的值！");
    }
}
- (IBAction)blockThreeClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)getDataFromNextView:(void (^)(NSString *))completion {
    completion(@"block 作为参数传的值！");
}


@end
