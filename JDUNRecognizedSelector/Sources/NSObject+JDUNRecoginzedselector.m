//
//  NSObject+JDUNRecoginzedselector.m
//  JDUNRecognizedSelector
//
//  Created by JD on 2019/7/12.
//  Copyright © 2019 JD. All rights reserved.
//

#import "NSObject+JDUNRecoginzedselector.h"

static JDUNRecoginzedselectorBlock _kJDUNRecoginzedselectorBLock;

@implementation NSObject (JDUNRecoginzedselector)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    return YES;
}

+ (BOOL)resolveClassMethod:(SEL)sel {
    return YES;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    if (![self respondsToSelector:aSelector]) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [self methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    if (_kJDUNRecoginzedselectorBLock) {
        _kJDUNRecoginzedselectorBLock(self.class,anInvocation);
    }
}

+ (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    if (![self respondsToSelector:aSelector]) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [self methodSignatureForSelector:aSelector];
}

+ (void)forwardInvocation:(NSInvocation *)anInvocation {
    if (_kJDUNRecoginzedselectorBLock) {
        _kJDUNRecoginzedselectorBLock(self,anInvocation);
    }
}

+ (void)setUnrecoginzedselectorBlock:(JDUNRecoginzedselectorBlock)unrecoginzedselectorBlock {
    _kJDUNRecoginzedselectorBLock = unrecoginzedselectorBlock;
}

+ (JDUNRecoginzedselectorBlock)unrecoginzedselectorBlock {
    return nil;
}

#pragma clang diagnostic pop

@end
