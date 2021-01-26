//
//  JXButtonView.m
//  SupportCarthageSDK
//
//  Created by meikiemi on 2021/1/26.
//

#import "JXButtonView.h"
#import <Masonry/Masonry.h>

@interface JXButtonView ()

@property (nonatomic, strong) UILabel *label;

@property (nonatomic, copy) NSString *title;

@end

@implementation JXButtonView

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title{
    self = [super initWithFrame:frame];
    if (self) {
        self.title = title;
        [self setupLayout];
    }
    return self;
}


- (void)setupLayout{
    self.label = [[UILabel alloc] init];
    self.label.text = self.title;
    self.label.textColor = [UIColor whiteColor];
    self.label.layer.borderColor = [UIColor whiteColor].CGColor;
    self.label.layer.borderWidth = 1.f;
    [self addSubview:self.label];
    
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.bottom.equalTo(self);
    }];
}


@end
