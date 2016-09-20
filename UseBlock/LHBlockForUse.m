//
//  LHBlockForUse.m
//  UseBlock
//
//  Created by 刘浩浩 on 16/9/20.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

#import "LHBlockForUse.h"

@implementation LHBlockForUse

- (void)test1
{
    _returnBlock(@"You can put every type in here");
}

- (void)test2
{
    _myBlock(@"CodeLiu",24);
}

- (NSString *)test3
{
    return _haveReturnBlock(@"小花");
}
@end
