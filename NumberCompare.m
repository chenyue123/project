//
//  NumberCompare.m
//  guessNumber
//
//  Created by  on 12-11-5.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import "NumberCompare.h"

@implementation NumberCompare

-(NSString*)NumberCompareResult :(NSString *)strCorrectNumber :(NSString *)strGuessNumber
{
    int nACount = 0;//存储A的个数
    int nBCount = 0;//存储B的个数
    for(int i = 0; i < strCorrectNumber.length; i++)
    {
        for(int j = 0; j < strGuessNumber.length; j++)
        {
            unichar wszCorrectCharacter =[strCorrectNumber characterAtIndex:i];
            unichar wszGuessCharacter = [strGuessNumber characterAtIndex:j];
            if (wszCorrectCharacter == wszGuessCharacter)
            {
                if (i == j)
                {
                    nACount++;
                }else{
                    nBCount++;
                }
            }
        }
    }
   NSString *strResult = [[NSString alloc]initWithFormat:@"%dA%dB",nACount,nBCount];
    
    return strResult;
}

@end
