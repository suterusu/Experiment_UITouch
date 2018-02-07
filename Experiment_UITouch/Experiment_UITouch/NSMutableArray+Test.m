//
//  NSMutableArray+Test.m
//  Experiment_UITouch
//
//  Created by Inba on 2017/12/26.
//  Copyright © 2017年 Inba. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import "NSMutableArray+Test.h"

@implementation NSMutableArray (Test)


-(void)logAddObject:(id)anObject{
    if ([anObject isKindOfClass:[UIGestureRecognizer class]]) {
        NSLog(@"%@",NSStringFromClass([anObject class]));
        NSLog(@"logAddObject");
    }

    [self logAddObject:anObject];
}


-(void)logRemoveObject:(id)anObject{
    if ([anObject isKindOfClass:[UITapGestureRecognizer class]]) {
        NSLog(@"logRemoveObject%@,%d",NSStringFromClass([anObject class]),self.count);
    }


    [self logRemoveObject:anObject];
}

-(void)logRemoveAllObjects{
    NSLog(@"logRemoveAllObjects");
    [self logRemoveAllObjects];
}

-(void)logremoveObjectsInArray:(NSArray *)otherArray{
    NSLog(@"logremoveObjectsInArray");
    [self logremoveObjectsInArray:otherArray];
}

-(void)logremoveObjectAtIndex:(NSUInteger)index{
    NSLog(@"logremoveObjectAtIndex");
    [self logremoveObjectAtIndex:index];
}

-(void)logremoveLastObject{
    NSLog(@"logremoveLastObject");
    [self logremoveLastObject];
}

-(void)logremoveObjectsInRange:(NSRange)range{
    NSLog(@"logremoveObjectsInRange");
    [self logremoveObjectsInRange:range];
}


+(void)switchLoggingMethod
{
    // メソッドを入れ替える
    [self switchInstanceMethodFrom:@selector(removeAllObjects)        To:@selector(logRemoveAllObjects)       ];

    [self switchInstanceMethodFrom:@selector(removeObject:)        To:@selector(logRemoveObject:)       ];
    [self switchInstanceMethodFrom:@selector(addObject:)    To:@selector(logAddObject:)   ];

    [self switchInstanceMethodFrom:@selector(removeObjectsInArray:)    To:@selector(logremoveObjectsInArray:)   ];
    [self switchInstanceMethodFrom:@selector(removeObjectAtIndex:)    To:@selector(logremoveObjectAtIndex:)   ];
    [self switchInstanceMethodFrom:@selector(removeLastObject)    To:@selector(logremoveLastObject)   ];
    [self switchInstanceMethodFrom:@selector(removeObjectsInRange:)    To:@selector(logremoveObjectsInRange:)   ];
//    [self switchInstanceMethodFrom:@selector()    To:@selector()   ];



}

+(void)switchInstanceMethodFrom:(SEL)from To:(SEL)to
{
    // メソッドの入れ替えの実態はここ
    Method fromMethod = class_getInstanceMethod(self,from);
    Method toMethod   = class_getInstanceMethod(self,to  );
    method_exchangeImplementations(fromMethod, toMethod);
}
@end
