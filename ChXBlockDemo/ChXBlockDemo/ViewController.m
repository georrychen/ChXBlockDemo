//
//  ViewController.m
//  ChXBlockDemo
//
//  Created by Xu Chen on 2018/8/11.
//  Copyright © 2018年 xu.yzl. All rights reserved.
//

#import "ViewController.h"
#import "DemoViewController.h"

@interface ViewController ()<DemoViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)nextClicked:(id)sender {
    DemoViewController *demoVc = [[DemoViewController alloc] initWithNibName:@"DemoViewController" bundle:[NSBundle mainBundle]];
    demoVc.viewDelegate = self;
    
    demoVc.oneBlock = ^(NSString *backString) {
        self.testLabel.text = backString;
    };
    
    demoVc.TwoBlock = ^(NSString *backString) {
        self.testLabel.text = backString;
    };
    
    [demoVc getDataFromNextView:^(NSString *backString) {
        self.testLabel.text = backString;
    }];
    
    [self presentViewController:demoVc animated:YES completion:nil];
}

// MARK: - DemoViewDelegate 代理方法
- (void)configureButtonDidSelected:(NSString *)backString {
    self.testLabel.text = backString;
}

@end
