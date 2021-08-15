//
//  Receiver.h
//  DesignPatternsOC
//
//  Created by dfang on 2021-8-15.
//  Copyright © 2021 east. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Receiver : NSObject

@property (nonatomic, strong) id client;

- (void)addVolume;

- (void)decreaseVolume;

@end

NS_ASSUME_NONNULL_END
