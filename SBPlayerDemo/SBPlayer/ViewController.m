//
//  ViewController.m
//  SBPlayer
//
//  Created by sycf_ios on 2017/4/10.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import "ViewController.h"
#import "SBPlayer.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet SBPlayer *sbview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.sbview assetWithURL:[NSURL URLWithString:@"http://download.3g.joy.cn/video/236/60236937/1451280942752_hd.mp4"]];
    [self.sbview setTitle:@"这是一个标题"];
    
}
BOOL flag;
- (IBAction)playOrPause:(id)sender {
    
    [self.sbview stop];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
