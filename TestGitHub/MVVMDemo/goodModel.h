//
//  goodModel.h
//  TestGitHub
//
//  Created by we on 2020/3/6.
//  Copyright © 2020 We. All rights reserved.
//

#import <Foundation/Foundation.h>
#define C(param) @property (nonatomic,copy) NSString *param;
NS_ASSUME_NONNULL_BEGIN

@interface goodModel : NSObject
C(name)
C(age)
@end

NS_ASSUME_NONNULL_END
