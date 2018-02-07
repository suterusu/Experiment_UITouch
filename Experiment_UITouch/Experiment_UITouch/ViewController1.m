//
//  ViewController1.m
//  Experiment_UITouch
//
//  Created by Inba on 2017/12/26.
//  Copyright © 2017年 Inba. All rights reserved.
//

#import "ViewController1.h"
#import "TestControl.h"
#import "TestControl2.h"

@interface ViewController1 (){
    BOOL isObservedUITouch;
}

@end

@implementation ViewController1
- (IBAction)buttontap:(id)sender {
    NSLog(@"Buttontap");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(test:)];
    [self.view addGestureRecognizer:pan];
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(test2:)];
    [self.view addGestureRecognizer:tap];
    
    
    TestControl *con = [[TestControl alloc]initWithFrame:CGRectMake(0, 0, 300, 300)];
    con.backgroundColor = [UIColor blueColor];
    
    
    TestControl2 *con2 = [[TestControl2 alloc]initWithFrame:CGRectMake(0, 300, 300, 300)];
    con2.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:con2];
    [self.view addSubview:con];
    
    // Do any additional setup after loading the view.
}

-(void)test:(UIPanGestureRecognizer *)a{
    if (a.state == UIGestureRecognizerStateBegan) {
        NSLog(@"開始PanGesture");
    }else if (a.state == UIGestureRecognizerStateRecognized){
        NSLog(@"認識PanGesture");
    }else if (a.state == UIGestureRecognizerStatePossible){
        NSLog(@"可能PanGesture");
    }else{
        NSLog(@"それ以外のイベントPanGesture");
    }
}
-(void)test2:(UITapGestureRecognizer *)a{
    if (a.state == UIGestureRecognizerStateBegan) {
        NSLog(@"開始TapGesture");
    }else if (a.state == UIGestureRecognizerStateRecognized){
        NSLog(@"認識TapGesture");
    }else if (a.state == UIGestureRecognizerStatePossible){
        NSLog(@"可能TapGesture");
    }else{
        NSLog(@"それ以外のイベントTapGesture");
    }
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"開始親View");
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"移動親View");

}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"終了親ビュー");

}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"キャンセル親ビュー");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
