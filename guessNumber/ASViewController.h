//
//  ASViewController.h
//  guessNumber ccccccccccccc
//
//  Created by  on 12-11-5.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "randomNumber.h"
#import "NumberCompare.h"
#import "GameControllerClass.h"

@interface ASViewController : UIViewController
{
    UITextField *m_TextFiled;
    UILabel *m_ResultLabel;
    IBOutlet UIButton *m_OkButton;
    
    randomNumber * m_randomNumber;
    NumberCompare *m_NumberCompare;
    GameControllerClass *m_GameController;
    
    NSString *strResult;
}
//用户输入到textFiled中, 接收数据
-(NSString *)receiveUserInputRandomNumber;
//确定按钮按下时
-(IBAction)OkButtonPressed;
//在label中显示结果
-(NSString *)resultInLabel;


@end
