//
//  NSObject+JDUNRecoginzedselector.h
//  JDUNRecognizedSelector
//
//  Created by JD on 2019/7/12.
//  Copyright © 2019 JD. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^JDUNRecoginzedselectorBlock)(Class clazz,NSInvocation *invocation);

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (JDUNRecoginzedselector)

@property (nonatomic, copy, class) JDUNRecoginzedselectorBlock unrecoginzedselectorBlock;

@end

NS_ASSUME_NONNULL_END
