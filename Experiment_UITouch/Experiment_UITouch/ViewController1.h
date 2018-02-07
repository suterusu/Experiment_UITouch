//
//  ViewController1.h
//  Experiment_UITouch
//
//  Created by Inba on 2017/12/26.
//  Copyright © 2017年 Inba. All rights reserved.
//

#import <UIKit/UIKit.h>


/*
 実験内容
 UIWindowから送られたUITouchはそれぞれ以下に送られるが
 それらはどういった関係か
 
 UIGestureRecognizer
 UIControl
 VIew
 
 
 結果
 UITouchは最初はhittestViewとそれより下の階層で設定されているGestureRecognizer全てに呼ばれる
 また、この時hittestViewがtouchメソッドを用意してい無い場合はnextResponderへtouchメソッドが呼ばれる
 ここでUIControlがtouchメソッドが呼ばれたViewに繋がれていた場合はトラッキングを始める
 
 またここでhitttestingViewがUIButtonの場合は、GestureRecognizerが取り除かれたりする
 */
@interface ViewController1 : UIViewController

@end
