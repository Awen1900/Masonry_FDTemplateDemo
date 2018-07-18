//
//  DemoListCell.m
//  FDTemplateDemo
//
//  Created by qiwen on 2018/7/2.
//  Copyright © 2018年 qiwen. All rights reserved.
//

#import "DemoListCell.h"
#import "DemoListModel.h"
#import <Masonry.h>

@interface DemoListCell ()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *distanceLabel;
@property (nonatomic, strong) UIImageView *headIcon;
@property (nonatomic, strong) UILabel *commentLabel;
@property (nonatomic, strong) UILabel *timeLabel;

@end

@implementation DemoListCell

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
    [self.contentView addSubview:self.nameLabel];
    [self.contentView addSubview:self.distanceLabel];
    [self.contentView addSubview:self.headIcon];
    [self.contentView addSubview:self.commentLabel];
    [self.contentView addSubview:self.timeLabel];
}

- (void)initAutoLayout {
    
    CGFloat padding = 10;
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self.contentView).offset(padding);
    }];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.titleLabel.mas_right).offset(padding);
        make.top.equalTo(self.contentView).offset(padding);
        make.height.mas_equalTo(30);
    }];
    [self.distanceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(padding);
        make.right.equalTo(self.contentView).offset(-padding);
    }];
    [self.headIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(padding);
        make.top.equalTo(self.titleLabel.mas_bottom).offset(padding);
        make.width.height.mas_equalTo(40);
    }];
    [self.commentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.headIcon.mas_right).offset(padding);
        make.top.equalTo(self.titleLabel.mas_bottom).offset(padding);
        make.right.equalTo(self.contentView).offset(-padding);
    }];
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.commentLabel.mas_bottom).offset(padding);
        make.left.equalTo(self.contentView).offset(padding);
        make.bottom.right.equalTo(self.contentView).offset(-padding);
    }];
}

- (void)bindCellWithDataModel:(DemoListModel *)dataModel {
    
    self.titleLabel.text = dataModel.title;
    self.nameLabel.text = dataModel.author;
    self.distanceLabel.text = dataModel.distance;
    
    self.headIcon.image = [UIImage imageNamed:@"headIcon_placeholder"];
    self.commentLabel.text = dataModel.comment;
    self.timeLabel.text = dataModel.time;
    
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
    }
    return _titleLabel;
}
- (UILabel *)nameLabel {
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
    }
    return _nameLabel;
}
- (UILabel *)distanceLabel {
    if (!_distanceLabel) {
        _distanceLabel = [[UILabel alloc] init];
    }
    return _distanceLabel;
}
- (UIImageView *)headIcon {
    if (!_headIcon) {
        _headIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"doctor_placeholder"]];
    }
    return _headIcon;
}
- (UILabel *)commentLabel {
    if (!_commentLabel) {
        _commentLabel = [[UILabel alloc] init];
        _commentLabel.numberOfLines = 0;
    }
    return _commentLabel;
}
- (UILabel *)timeLabel {
    if (!_timeLabel) {
        _timeLabel = [[UILabel alloc] init];
        _timeLabel.textAlignment = NSTextAlignmentRight;
        _timeLabel.font = [UIFont systemFontOfSize:14.0f];
    }
    return _timeLabel;
}



@end
