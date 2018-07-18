//
//  SecondDemoCell.m
//  FDTemplateDemo
//
//  Created by qiwen on 2018/7/9.
//  Copyright © 2018年 qiwen. All rights reserved.
//

#import "SecondDemoCell.h"
#import <Masonry.h>

@interface SecondDemoCell ()
@property (nonatomic, strong) UIView *mainView;
@end

@implementation SecondDemoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.mainView = [[UIView alloc] init];
        [self.contentView addSubview:self.mainView];
        
        [self.mainView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.contentView);
            make.height.mas_equalTo(100).priority(751);
        }];
        
    }
    return self;
}

- (void)bindCellWithDataModel {
    [self.mainView setBackgroundColor:[UIColor greenColor]];
}

@end
