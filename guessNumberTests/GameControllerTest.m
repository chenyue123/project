//
//  GameControllerTest.m
//  guessNumber
//
//  Created by  on 12-11-8.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import "GameControllerTest.h"
#import "GameControllerClass.h"
#import <UIKit/UIKit.h>

//#import "application_headers" as required

@implementation GameControllerTest

// All code under test is in the iOS Application
- (void)testAppDelegate
{
    id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
    STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
}

-(void)test_Game_Controller_fail_is_six
{
    NSString * strReceive = @"3456";
    GameControllerClass *gameControllerTest = [[GameControllerClass alloc]initWithCount:6 :@"1234"];
    NSString *strTestResult ;
    for(int i = 0;i != 6; i++)
    {
        strTestResult = [[NSString alloc]initWithFormat:@"%@",[gameControllerTest ReceiveNumberOfGame:strReceive]];
    }
    STAssertEqualObjects(@"fail", strTestResult, @"");
}
-(void)test_Game_Controller_succeed_is_4A0B
{
    NSString *strReceive = @"1234";
    GameControllerClass *gameControllerTest = [[GameControllerClass alloc]initWithCount:6 :@"1234"];
    NSString *strTestResult = [[NSString alloc]initWithFormat:@"%@",[gameControllerTest ReceiveNumberOfGame:strReceive]];
    STAssertEqualObjects(@"succeed", strTestResult, @"");
    
}
-(void)test_Game_Controller_error_is_correct_return
{
    NSString *strReceive = @"1256";
    GameControllerClass *gameControllerTest = [[GameControllerClass alloc]initWithCount:6 :@"1234"];
    NSString *strTestResult = [[NSString alloc]initWithFormat:@"%@",[gameControllerTest ReceiveNumberOfGame:strReceive]];
    STAssertEqualObjects(@"2A0B", strTestResult, @"");
}
@end
