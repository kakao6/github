//
//  GoodCell.m
//  TestGitHub
//
//  Created by we on 2020/3/6.
//  Copyright © 2020 We. All rights reserved.
//

#import "GoodCell.h"
#import "GoodViewModel.h"
@interface GoodCell()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameTf;
@property (weak, nonatomic) IBOutlet UITextField *emailTf;
@property (strong,nonatomic) GoodViewModel *viewModel;
@end





@implementation GoodCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.nameTf.delegate = self;
    self.emailTf.delegate = self;
   
    
}
- (void)updateViewWithViewModel:(GoodViewModel *)viewModel{
    self.viewModel = viewModel;
    //[self.viewModel updateModelWith:<#(nonnull goodModel *)#>]
    [self.viewModel addObserver:self forKeyPath:@"model" options:NSKeyValueObservingOptionNew context:nil];
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    if ([keyPath isEqualToString:@"model"]) {
        goodModel *good = (goodModel *)change[NSKeyValueChangeNewKey];
        self.nameTf.text = good.name;
        self.emailTf.text = good.age;
    }
}
- (void)dealloc{
    [self.viewModel removeObserver:self forKeyPath:@"model"];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    goodModel *m = [goodModel new];
    if (textField == self.nameTf) {
        self.nameTf.text = textField.text;
        m.name = self.nameTf.text;
    }else{
        self.emailTf.text = textField.text;
        m.age =   self.emailTf.text;
    }
    [self.viewModel updateModelWith:m];
}
- (GoodViewModel *)viewModel{
    if (!_viewModel) {
        _viewModel = [GoodViewModel new];
    }
    return _viewModel;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
