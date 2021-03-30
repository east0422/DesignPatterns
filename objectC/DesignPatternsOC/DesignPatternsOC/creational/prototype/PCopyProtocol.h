//
//  PCopyProtocol.h
//  DesignPatternsOC
//
//  Created by dfang on 2020-12-28.
//  Copyright © 2020 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PCopyProtocol <NSObject>

/** 返回一个自己的拷贝对象 */
- (instancetype)clone;

@end

NS_ASSUME_NONNULL_END
