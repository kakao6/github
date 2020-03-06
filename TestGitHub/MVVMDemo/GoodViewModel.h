//
//  GoodViewModel.h
//  TestGitHub
//
//  Created by we on 2020/3/6.
//  Copyright © 2020 We. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "goodModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface GoodViewModel : NSObject

@property (nonatomic,strong,readonly) goodModel *model;

+ (GoodViewModel *)demoWithModel:(goodModel *)m;
- (void)updateModelWith:(goodModel *)good;
@end

NS_ASSUME_NONNULL_END
