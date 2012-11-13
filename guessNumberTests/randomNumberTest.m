//
//  randomNumberTest.m
//  guessNumber
//
//  Created by  on 12-11-8.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import "randomNumberTest.h"
#import "randomNumber.h"
#import <UIKit/UIKit.h>
//#import "application_headers" as required

@implementation randomNumberTest

// All code under test is in the iOS Application
- (void)testAppDelegate
{
    id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
    STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
}
-(void)test_random_number_is_equal
{
    //生成一个随机数串，检查是否有相同的字母
    randomNumber *randomTest = [[randomNumber alloc]init];
    NSString *strResult = [randomTest ProduceFourRandomNumbers];
    //若有任何两个字符相同，则产生的随机数串错误
    for(int i = 0; i < 4; i++)
    {
        for(int j = i + 1; j < 4; j++)
        {
            UniChar iRandom = [strResult characterAtIndex:i];
            UniChar jRandom = [strResult characterAtIndex:j];
            
            //STAssertEqualObjects(iRandom,jRandom, @"");
            STAssertTrue(iRandom != jRandom, nil);
        }
    }
}
@end
