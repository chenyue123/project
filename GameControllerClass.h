//
//  GameControllerClass.h
//  guessNumber
//
//  Created by  on 12-11-8.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "randomNumber.h"
#import "NumberCompare.h"
@interface GameControllerClass : NSObject
{
    int m_nCount;
    NSString *m_correctRandomNumber;
}
//猜数游戏控制次数   接受随机数串的字符串
-(id)initWithCount:(int)nCount :(NSString *)strCorrectRandomNumber;
-(NSString *)ReceiveNumberOfGame:(NSString *)strReceiveNumber;
-(void)reset:(int)nCount :(NSString *)strCorrectRandomNumber;
@end
