//
//  ASViewController.m
//  guessNumber
//
//  Created by  on 12-11-5.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import "ASViewController.h"
#import "randomNumber.h"
#import "NumberCompare.h"
#import "GameControllerClass.h"
@implementation ASViewController
//@synthesize correctNumberStr;
//@synthesize guessNumberFiled,resultLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
//buttoninit
//{
//    
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib. 
    m_randomNumber = [[randomNumber alloc]init];
    strResult = [m_randomNumber ProduceFourRandomNumbers];
    
    m_GameController = [[GameControllerClass alloc]initWithCount:6 :strResult];
    m_NumberCompare = [[NumberCompare alloc]init];
    
    
    
    //添加一个文本框
    CGRect frame = CGRectMake(20.0, 30.0, 260.0, 40.0);
    m_TextFiled = [[UITextField alloc]initWithFrame:frame];
    m_TextFiled.borderStyle = UITextBorderStyleRoundedRect;
    m_TextFiled.keyboardType = UIKeyboardTypeNumberPad;
    [m_TextFiled addTarget:self action:@selector(inputErrorText) forControlEvents:UIControlEventEditingChanged];
    //添加一个button
    m_OkButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    m_OkButton.frame = CGRectMake(50, 100, 50, 30);
    UILabel *textLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 40, 20)];
    textLabel.text = @"Start";
    [m_OkButton addSubview:textLabel];
    [m_OkButton addTarget:self action:@selector(OkButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    //添加一个label显示结果
    m_ResultLabel = [[UILabel alloc]initWithFrame:CGRectMake(150, 100, 80, 30)];
    //m_ResultLabel.text = @"nAnB";
    
    [self.view addSubview:m_OkButton];
    [self.view addSubview:m_TextFiled];
    [self.view addSubview:m_ResultLabel];
}
-(IBAction)OkButtonPressed
{
    NSString *strTextFiled = m_TextFiled.text;
    m_ResultLabel.text = [m_GameController ReceiveNumberOfGame:strTextFiled];
    BOOL bSucceed = [m_ResultLabel.text isEqualToString:@"succeed"];
    BOOL bFail = [m_ResultLabel.text isEqualToString:@"fail"];
    if(bSucceed || bFail)
    {
        strResult = [m_randomNumber ProduceFourRandomNumbers];
        [m_GameController reset:6 :strResult];
    }
    //m_ResultLabel.text = [m_NumberCompare NumberCompareResult:strResult :strTextFiled];
}

-(BOOL)checkSameNumber
{
    unichar wszOld = [m_TextFiled.text characterAtIndex:(m_TextFiled.text.length - 1)];
    for(int i = 0; i < m_TextFiled.text.length - 1; i++)
    {
        unichar wszNew = [m_TextFiled.text characterAtIndex:i];
        if(wszOld == wszNew)
        {
            return TRUE;
        }
    }
    return FALSE;
}

-(void)inputErrorText
{
    if(m_TextFiled.text.length >= 5)
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"警告！" message:@"只能猜一个四位数" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:@"cancle", nil];
        [alert show];
        m_TextFiled.text = [m_TextFiled.text substringToIndex:4];
    }
    BOOL bCheck = [self checkSameNumber];
    if(bCheck)
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"警告！" message:@"数字重复！" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:@"cancle", nil];
        [alert show];
        m_TextFiled.text = [m_TextFiled.text substringToIndex:m_TextFiled.text.length - 1];
    }
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
@end
