# HCAnimationDemo
一句话实现常用动画，操作简单、接口清晰、代码易懂。
![image](https://github.com/honeycao/HCAnimationDemo/blob/master/HCAnimation.gif) 
------

##1、功能实现
* 一句话调用动画、去除动画
* 动画类型有：缩放、渐变、震动、移动、旋转
* 其中震动和旋转是有多种组合模式的

-----

##2、使用
* 直接下载该demo，其中项目中的`HCAnimation`文件夹存放的是封装好的动画代码
* `ViewController`中是对动画代码的调用
* 注意的地方
```obj-c
//头文件的添加
#import "CAAnimation+HCAnimation.h"

//都是类方法，调用的时候用的是`CAAnimation`类
```

-----

##3、Q-A
* 动画组合或者新样式很多，可以自己去修改`HCAnimation`文件夹下的代码，来实现自己所需要的功能
