//
//  LHBlockForUse.h
//  UseBlock
//
//  Created by 刘浩浩 on 16/9/20.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 定义一个block

 @param returnContent 返回值
 */
typedef void(^RetureContentBlock)(id returnContent);

@interface LHBlockForUse : NSObject

/**
 用定义的block来声明一个变量
 */
@property(nonatomic,copy)RetureContentBlock returnBlock;

/**
 常规无返回值有参数block，比较常用
 */
@property(nonatomic,copy)void (^myBlock) (NSString *name,int age);

/**
 常规有返回值有参数block，使用起来其实和上面那个差别不大
 */
@property(nonatomic,copy)NSString *(^haveReturnBlock) (NSString *name);


/**
 声明的block测试方法
 */
- (void)test1;

/**
 无返回值
 */
- (void)test2;

/**
 有返回值

 @return 名字
 */
- (NSString *)test3;

@end
