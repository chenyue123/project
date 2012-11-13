//
//  GameControllerClass.m
//  guessNumber
//
//  Created by  on 12-11-8.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import "GameControllerClass.h"
#import "randomNumber.h"
#import "NumberCompare.h"
@implementation GameControllerClass
-(id)initWithCount:(int)nCount :(NSString *)strCorrectRandomNumber
{
    self = [super init];
    if(self != nil)
    {
        m_nCount = nCount;
        m_correctRandomNumber = strCorrectRandomNumber;
    }
    return self;
}
-(void)reset:(int)nCount :(NSString *)strCorrectRandomNumber
{
    m_nCount = nCount;
    m_correctRandomNumber = strCorrectRandomNumber;
}
-(NSString *)ReceiveNumberOfGame:(NSString *)strReceiveNumber
{
    NumberCompare *numResult = [[NumberCompare alloc]init];
    NSString *strResult = [[NSString alloc]init];
    strResult = [numResult NumberCompareResult:m_correctRandomNumber :strReceiveNumber];
    
    m_nCount--;
    
    NSString *strReturnResult;
    BOOL bResult = [strResult isEqualToString:@"4A0B"];
    
    if(m_nCount > 0 && !bResult)
    {
        strReturnResult = [[NSString alloc]initWithFormat:@"%@",strResult];
    }
    if(m_nCount >= 0 && bResult)
    {
        strReturnResult = [[NSString alloc]initWithFormat:@"succeed"];
    }
    if(m_nCount == 0 && !bResult)
    {
        strReturnResult = [[NSString alloc]initWithFormat:@"fail"];
    }
    return strReturnResult;
}

@end
