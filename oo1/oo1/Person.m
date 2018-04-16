//
//  Person.m
//  oo1
//
//  Created by hanchongchong on 2018/4/11.
//  Copyright © 2018年 hanchongchong. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
#import "OtherClass.h"

@implementation Person

// 1.动态方法解析

+ (BOOL)resolveInstanceMethod:(SEL)sel {
//    //获取方法名
//    NSString *methodName = NSStringFromSelector(sel);
//
//    if ([methodName isEqualToString:@"sendText:"]) {
//        return class_addMethod(self, sel, (IMP)sendText, "v@:@");
//    }
    return NO;
}

void sendText(id self, SEL _cmd, NSString *text) {
    NSLog(@"%@", text);
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    
//        NSString *methodName = NSStringFromSelector(aSelector);
//
//        if ([methodName isEqualToString:@"sendText:"]) {
//            return [[OtherClass alloc] init];
//        }
    
    return [super  forwardingTargetForSelector:aSelector];
}

// 方法签名

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    
    NSString *methodName = NSStringFromSelector(aSelector);
    
    if ([methodName isEqualToString:@"sendText:"]) {
        NSMethodSignature *sign = [NSMethodSignature signatureWithObjCTypes:"v@:@"];
        return sign;
    }

    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
//    SEL sel = [anInvocation selector];
//    
//    OtherClass *obj = [[OtherClass alloc] init];
//    
//    if ([obj respondsToSelector:sel]) {
//        [anInvocatio anvoke]
//    }
//    return [super forwardingTargetForSelector:sel];
}


@end
