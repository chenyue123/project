//
//  guessNumberTests.m
//  guessNumberTests
//
//  Created by  on 12-11-5.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import "guessNumberTests.h"
#import "NumberCompare.h"

@implementation guessNumberTests
-(void)test_guess_number_result_is_4A0B
{
    NumberCompare *compareTest = [[NumberCompare alloc]init];
    NSString *strCorrectNumberString = @"1234";
    NSString *strGuessNumberString = @"1234";
    NSString *strResult = 
    [compareTest NumberCompareResult :strCorrectNumberString :strGuessNumberString];
    STAssertEqualObjects(@"4A0B", strResult, @"");
}
-(void)test_guess_number_result_is_2A2B
{
    NumberCompare *compareTest = [[NumberCompare alloc]init];
    NSString *strCorrectNumberString = @"1234";
    NSString *strGuessNumberString = @"1243";
    NSString *strResult =
    [compareTest NumberCompareResult :strCorrectNumberString :strGuessNumberString];
    STAssertEqualObjects(@"2A2B", strResult, @"");
}
-(void)test_guess_number_result_is_0A4B
{
    NumberCompare *compareTest = [[NumberCompare alloc]init];
    NSString *strCorrectNumberString = @"1234";
    NSString *strGuessNumberString = @"4321";
    NSString *strResult = 
    [compareTest NumberCompareResult:strCorrectNumberString :strGuessNumberString];
    STAssertEqualObjects(@"0A4B", strResult, @"");
}
-(void)test_guess_number_result_is_0A0B
{
    NumberCompare *compareTest = [[NumberCompare alloc]init];
    NSString *strCorrectNumberString = @"1234";
    NSString *strGuessNumberString = @"5678";
    NSString *strResult =
    [compareTest NumberCompareResult :strCorrectNumberString :strGuessNumberString];
    STAssertEqualObjects(@"0A0B", strResult, @"");
    
}

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    //STFail(@"Unit tests are not implemented yet in guessNumberTests");
}

@end
