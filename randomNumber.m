//
//  randomNumber.m
//  guessNumber
//
//  Created by  on 12-11-6.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import "randomNumber.h"

@implementation randomNumber
//随机数范围的下限和上限 产生四个随机数的字符串
//-(NSString *)ProduceFourRandomNumbers:(int)lowLimit :(int)cap
//{
//    //接受产生的随机数
//    int nRandom;
//    //保存得到的每一个随机数
//    NSMutableString *strRandomNumber = [[NSMutableString alloc]initWithCapacity:0];
//    while (strRandomNumber.length < 4) {
//        //产生一个随机数
//        nRandom = lowLimit + (arc4random() % (cap - lowLimit + 1));
//        //如果是第一个加进去的随机数，则直接加进去
//        
//        if(strRandomNumber == nil)
//        {
//            [strRandomNumber appendFormat:@"%d",nRandom];
//        }
//        //否则，让现在刚产生的随机数与以前的数相比较
//        else{
//            //如果添加的这个数与之前的数字相同，重新生成
//            for(int j = 0; j < strRandomNumber.length - 1;j++)
//            {
//                //如果产生的随机数与前面的不相同，而且已经遍历到这个字符串的最后一位数字，就要把产生的随机数加进来
//                if([strRandomNumber characterAtIndex:(strRandomNumber.length - 1)] != [strRandomNumber characterAtIndex:j])
//                {
//                    if(j == strRandomNumber.length-1)
//                    {
//                        [strRandomNumber appendFormat:@"%d",nRandom];
//                    }
//                }
//                
//                continue; 
//            }
//        }
//    }
//        return strRandomNumber;
//                    
//}
//strRandomNumber = [strRandomNumber initWithFormat: @"%d%d%d%d"
-(NSString *)ProduceFourRandomNumbers
{
//    int nRandom1;
//    int nRandom2;
//    int nRandom3;
//    int nRandom4;
//    nRandom1 = arc4random()%10;
//    nRandom2 = arc4random()%10;
//    nRandom3 = arc4random()%10;
//    nRandom4 = arc4random()%10;
//    while (nRandom1 == nRandom2) {
//        nRandom2 = arc4random()%10;
//    }
//    while(nRandom1 == nRandom3 || nRandom2 == nRandom3)
//    {
//        nRandom3 = arc4random()%10;
//    }
//    while(nRandom1 == nRandom4 || nRandom2 == nRandom4 || nRandom3 == nRandom4)
//    {
//        nRandom4 = arc4random()%10;
//    }
//    int arrRandom[4];
//    arrRandom[0] = arc4random()%10;
//    arrRandom[1] = arc4random()%10;
//    arrRandom[2] = arc4random()%10;
//    arrRandom[3] = arc4random()%10;
//    for(int i = 1; i < 4; i++)
//    {
//        for(int j = 0; j < i; )
//        {
//            if(arrRandom[i] == arrRandom[j])
//            {
//                arrRandom[i] = arc4random()%10;
//                j = 0;
//                continue;
//            }
//            j++;
//        }
//    }
    
    //存储随机数字
    int nArrRandom[4];
    //存储标识符
    int nDataFlag[10] = {0};
    int nRandom; 
    for(int i = 0; i < 4;)
    {
        nRandom = arc4random()%10;
        if(nDataFlag[nRandom] == 0)
        {
            nArrRandom[i] = nRandom;
            nDataFlag[nRandom] = -1;
            i ++;
        }
        continue;
    }
    NSString *strRandomResult = [[NSString alloc]initWithFormat:@"%d%d%d%d",nArrRandom[0],nArrRandom[1],nArrRandom[2],nArrRandom[3]];
    return strRandomResult;
}
@end
