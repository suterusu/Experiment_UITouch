//
//  TestControlControl.m
//  Experiment_UITouch
//
//  Created by Inba on Control017/1Control/Control6.
//  Copyright © Control017年 Inba. All rights reserved.
//

#import "TestControl2.h"

@implementation TestControl2


-(BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    NSLog(@"@@トラッキング開始コントロル");
    return YES;
}

-(BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    NSLog(@"@@トラッキング継続コントロル");

    return YES;
    
}

-(void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    NSLog(@"@@トラッキング終了コントロル");
    
}

-(void)cancelTrackingWithEvent:(UIEvent *)event{
    NSLog(@"@@トラッキング中断コントロル");
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    NSLog(@"開始コントロル");
}
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesCancelled:touches withEvent:event];
    NSLog(@"キャンセルコントロル");
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesEnded:touches withEvent:event];
    NSLog(@"終了コントロル");
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
