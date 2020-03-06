//
//  GoodCell.h
//  TestGitHub
//
//  Created by we on 2020/3/6.
//  Copyright © 2020 We. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GoodViewModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface GoodCell : UITableViewCell
- (void)updateViewWithViewModel:(GoodViewModel *)viewModel;
@end

NS_ASSUME_NONNULL_END
