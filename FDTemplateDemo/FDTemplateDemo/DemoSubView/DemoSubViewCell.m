//
//  DemoSubViewCell.m
//  FDTemplateDemo
//
//  Created by qiwen on 2018/7/17.
//  Copyright © 2018年 qiwen. All rights reserved.
//

#import "DemoSubViewCell.h"
#import <Masonry.h>

@interface DemoSubViewCell ()

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UIButton *tagBoard;

@property (nonatomic, strong) DemoCuntomSubView *subView1;

@property (nonatomic, strong) DemoCuntomSubView *subView2;

@property (nonatomic, strong) DemoCuntomSubView *subView3;

@end
@implementation DemoSubViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self initSubViews];
        
        [self initAutoLayout];
    }
    return self;
}

- (void)initSubViews {
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.tagBoard];
    [self.contentView addSubview:self.subView1];
    [self.contentView addSubview:self.subView2];
    [self.contentView addSubview:self.subView3];
}
- (void)initAutoLayout {
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(10);
    }];
    [self.tagBoard mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.height.mas_equalTo(0);
        make.top.equalTo(self.titleLabel.mas_bottom).offset(8);
    }];
    [self.subView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.equalTo(self.tagBoard.mas_bottom).offset(8).priority(751);
        make.right.mas_equalTo(-10);
    }];
    [self.subView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.equalTo(self.subView1.mas_bottom).offset(8);
        make.right.mas_equalTo(-10);
    }];
    [self.subView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.equalTo(self.subView2.mas_bottom).offset(8);
        make.right.mas_equalTo(-10);
        make.bottom.mas_equalTo(-10);
    }];
}
- (void)bindCellWithDataModel:(DemoSubViewModel *)dataModel {
    self.titleLabel.text = dataModel.titleString;
    [self.tagBoard mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(50).priority(751);
    }];
    [self.subView1 setLabelData:(DemoSubViewItemModel *)dataModel.itemModel[0]];
    [self.subView2 setLabelData:(DemoSubViewItemModel *)dataModel.itemModel[1]];
    [self.subView3 setLabelData:(DemoSubViewItemModel *)dataModel.itemModel[2]];
}
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor purpleColor];
    }
    return _titleLabel;
}
- (UIButton *)tagBoard {
    if (!_tagBoard) {
        _tagBoard = [UIButton buttonWithType:UIButtonTypeSystem];
        [_tagBoard setTitle:@"点我啊" forState:UIControlStateNormal];
    }
    return _tagBoard;
}
- (DemoCuntomSubView *)subView1 {
    if (!_subView1) {
        _subView1 = [[DemoCuntomSubView alloc] init];
    }
    return _subView1;
}
- (DemoCuntomSubView *)subView2 {
    if (!_subView2) {
        _subView2 = [[DemoCuntomSubView alloc] init];
    }
    return _subView2;
}
- (DemoCuntomSubView *)subView3 {
    if (!_subView3) {
        _subView3 = [[DemoCuntomSubView alloc] init];
    }
    return _subView3;
}



@end


@implementation DemoCuntomSubView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initSubViews];
        
        [self initAutoLayout];
    }
    return self;
}
- (void)initSubViews {
    [self addSubview:self.label1];
    [self addSubview:self.label2];
    [self addSubview:self.label3];
}
- (void)initAutoLayout {
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(10);
        make.right.mas_equalTo(-10);
    }];
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.top.equalTo(self.label1.mas_bottom).offset(5);
    }];
    [self.label3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.top.equalTo(self.label2.mas_bottom).offset(5).priority(751);
        make.bottom.equalTo(self.mas_bottom).offset(-10);
    }];
}
- (void)setLabelData:(DemoSubViewItemModel *)dataModel {
    self.label1.text = dataModel.label1String;
    self.label2.text = dataModel.label2String;
    self.label3.text = dataModel.label3String;
}

- (UILabel *)label1 {
    if (!_label1) {
        _label1 = [[UILabel alloc] init];
        _label1.textColor = [UIColor redColor];
        _label1.numberOfLines = 3;
    }
    return _label1;
}
- (UILabel *)label2 {
    if (!_label2) {
        _label2 = [[UILabel alloc] init];
        _label2.textColor = [UIColor greenColor];
        _label2.numberOfLines = 2;
    }
    return _label2;
}
- (UILabel *)label3 {
    if (!_label3) {
        _label3 = [[UILabel alloc] init];
        _label3.textColor = [UIColor blueColor];
    }
    return _label3;
}
@end
