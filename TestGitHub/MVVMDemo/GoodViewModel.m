//
//  GoodViewModel.m
//  TestGitHub
//
//  Created by we on 2020/3/6.
//  Copyright © 2020 We. All rights reserved.
//

#import "GoodViewModel.h"
@interface GoodViewModel()
@property (nonatomic,strong,readwrite) goodModel *model;
@end


@implementation GoodViewModel
+ (GoodViewModel *)demoWithModel:(goodModel *)m{
    GoodViewModel *vm = [GoodViewModel new];
    vm.model = m;
    return vm;
}
- (void)updateModelWith:(goodModel *)good{
    self.model = good;
}
@end
