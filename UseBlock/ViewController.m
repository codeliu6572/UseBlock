//
//  ViewController.m
//  UseBlock
//
//  Created by 刘浩浩 on 16/9/20.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

#import "ViewController.h"
#import "LHBlockForUse.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     看完用法感觉和代理好像啊有木有，看起来比代理更便捷，不需要代理方法，大家不妨做个比较，还有就是像函数，在写完block后，block中的内容并不会执行，而是在调用方法之后才会执行，类似函数
     */
    
    
    LHBlockForUse *lhBlock = [[LHBlockForUse alloc]init];
    
    /**
     调用声明的block来传参数

     @param returnValue 返回可以是任意类型

     @return 此处为string
     */
    lhBlock.returnBlock = ^(id returnValue){
        NSLog(@"%@",returnValue);
    };
    [lhBlock test1];
    
    
    /**
     无返回值有参数

     @param name 名字
     @param age  年龄

     @return 名字和年龄
     */
    lhBlock.myBlock = ^(NSString *name,int age){
        NSLog(@"name:%@ and age:%d",name,age);
    };
    [lhBlock test2];
    
    
    /**
     有返回有参数

     @param lastStr 传入参数

     @return 返回最后结果
     */
    lhBlock.haveReturnBlock = ^(NSString *lastStr){
        return [NSString stringWithFormat:@"%@-%@",lastStr,@"哈哈哈"];
    };
    NSLog(@"%@",[lhBlock test3]);
    
    //下面俩block也是一种写法不过这么用的貌似不多见，大多时候这么写反而显得麻烦了（从这里可以看出，block可以定义在方法内部也可以定义在方法外部，在外部的时候看着是不是更像函数了）
    NSString *(^thisBlock) (NSString *thisName) = ^(NSString *name){
        return [NSString stringWithFormat:@"%@:%@",@"name",name];
    };
    NSLog(@"%@",thisBlock(@"xiaoming"));
    
  
    
    BlockVoid(24);

    __block int lastAge = 24;
    void (^lastAgeBlock) (int age) = ^(int addAge){
        lastAge = lastAge + addAge;
        NSLog(@"xiaomingLastAge:%d",lastAge);
    };
    lastAgeBlock(1);
    
}

void (^BlockVoid) (int age) = ^(int xiaomingAge){
    NSLog(@"xiaomingAge:%d",xiaomingAge);
};

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
