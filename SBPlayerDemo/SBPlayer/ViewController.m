//
//  ViewController.m
//  SBPlayer
//
//  Created by sycf_ios on 2017/4/10.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import "ViewController.h"
#import "SBPlayer.h"
#import <Masonry.h>
@interface ViewController ()

@property (nonatomic,strong) SBPlayer *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //纯代码请用此种方法
    //http://ivi.bupt.edu.cn/hls/cctv1hd.m3u8 直播网址
    //初始化播放器
    self.player = [[SBPlayer alloc]initWithUrl:[NSURL URLWithString:@"http://download.3g.joy.cn/video/236/60236937/1451280942752_hd.mp4"]];
    //设置标题
    [self.player setTitle:@"这是一个标题"];
    //设置播放器背景颜色
    self.player.backgroundColor = [UIColor blackColor];
    //设置播放器填充模式 默认SBLayerVideoGravityResizeAspectFill，可以不添加此语句
    self.player.mode = SBLayerVideoGravityResizeAspectFill;
    //添加播放器到视图
    [self.view addSubview:self.player];
    //约束，也可以使用Frame
    [self.player mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.left.mas_equalTo(self.view);
        make.height.mas_equalTo(@250);
    }];
    
    /**
     使用xib请用第二种方法
     [self.player assetWithURL:[NSURL URLWithString:@"http://download.3g.joy.cn/video/236/60236937/1451280942752_hd.mp4"]];
     [self.player setTitle:@"这是一个标题"];
     */
    
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}
- (IBAction)playOrPause:(id)sender {
    
    [self.player stop];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
