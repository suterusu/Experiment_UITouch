//
//  TestControl.m
//  Experiment_UITouch
//
//  Created by Inba on 20Button7/Button2/26.
//  Copyright © 20Button7年 Inba. All rights reserved.
//

#import "TestControl.h"

@implementation TestControl{
    UITapGestureRecognizer *tapG;
}

-(BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    NSLog(@"@@トラッキング開始ボタン");
        NSArray *ag = touch.gestureRecognizers;
     BOOL a = [super beginTrackingWithTouch:touch withEvent:event];

    

    NSArray *g = touch.gestureRecognizers;
    //UIGestureRecognizer *ax = g[2];
    //ax.delegate = self;
    return a;
}

-(BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    NSLog(@"@@トラッキング継続ボタン");
    return [super continueTrackingWithTouch:touch withEvent:event];

}

-(void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    [super endTrackingWithTouch:touch withEvent:event];
    NSLog(@"@@トラッキング終了ボタン");
 
}

-(void)cancelTrackingWithEvent:(UIEvent *)event{
    [super cancelTrackingWithEvent:event];
    NSLog(@"@@トラッキング中止ボタン");

}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"aa");
    
    NSLog(@"こい");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSArray *g = [touches anyObject].gestureRecognizers;
    NSLog(@"開始ボタン");
    [super touchesBegan:touches withEvent:event];
    NSArray *g2 = [touches anyObject].gestureRecognizers;
}
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
        NSArray *g = [touches anyObject].gestureRecognizers;
    NSLog(@"キャンセルボタン");
    [super touchesCancelled:touches withEvent:event];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch2 = [touches anyObject];
    NSArray *g = [touches anyObject].gestureRecognizers;
    NSLog(@"終了ボタン");
    [super touchesEnded:touches withEvent:event];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
