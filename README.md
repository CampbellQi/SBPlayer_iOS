# SBPlayer_iOS
### 2017.4.11对代码进行重构，修改全屏方式，使SBPlayer切换全屏流畅无比，代码量相对之前的SBPlayer少很多，几乎没有多余代码，也更为合理。

#### 基于AVPlayer封装的轻量级播放器,可以播放本地网络视频,易于定制
##### SBPlayer结构简单,可以`横屏竖屏`,支持`M3u8、mp4`等格式视频本地播放或者网络播放,通过masonry约束，适配各种尺寸iPhone。
***

![3](https://github.com/shibiao/SBPlayer_iOS/blob/master/Images/23.gif)
![1](https://github.com/shibiao/SBPlayer_iOS/blob/master/Images/QQ20170411-153557.png)
![2](https://github.com/shibiao/SBPlayer_iOS/blob/master/Images/QQ20170411-153616.png)

***
#### 使用方法：
##### 拖拽SBPlayer文件夹到项目中，然后倒入SBPlayer.h即可

##### 导入` #import "SBPlayer" `,用xib更简单，使用如下，方便简单

```
      //纯代码请用此种方法
    self.player = [[SBPlayer alloc]initWithUrl:[NSURL    URLWithString:@"http://download.3g.joy.cn/video/236/60236937/1451280942752_hd.mp4"]];
    [self.player setTitle:@"这是一个标题"];
    [self.view addSubview:self.player];
    [self.player mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.left.mas_equalTo(self.view);
        make.height.mas_equalTo(@250);
    }];
        //使用xib请用第二种方法
//    [self.player assetWithURL:[NSURL URLWithString:@"http://download.3g.joy.cn/video/236/60236937/1451280942752_hd.mp4"]];
//    [self.player setTitle:@"这是一个标题"];
```

SBPlayer macOS版 : http://www.jianshu.com/p/1ad52c702190
* 邮件(956035125@qq.com)
* QQ: 956035125
* github: [github](https://github.com/shibiao)
* 详细请看简书： [iOS通过AVPlayer打造自己的视频播放器](http://www.jianshu.com/p/ffe1bd598bf2)
