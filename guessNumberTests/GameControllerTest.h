//
//  GameControllerTest.h
//  guessNumber
//
//  Created by  on 12-11-8.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

//  Application unit tests contain unit test code that must be injected into an application to run correctly.
//  See Also: http://developer.apple.com/iphone/library/documentation/Xcode/Conceptual/iphone_development/135-Unit_Testing_Applications/unit_testing_applications.html

#import <SenTestingKit/SenTestingKit.h>

#import "GameControllerClass.h"
@interface GameControllerTest : SenTestCase
-(void)test_Game_Controller_fail_is_six;
-(void)test_Game_Controller_succeed_is_4A0B;
-(void)test_Game_Controller_error_is_correct_return;
@end
