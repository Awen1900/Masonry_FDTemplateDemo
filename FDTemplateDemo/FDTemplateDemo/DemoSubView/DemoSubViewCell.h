//
//  DemoSubViewCell.h
//  FDTemplateDemo
//
//  Created by qiwen on 2018/7/17.
//  Copyright © 2018年 qiwen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DemoSubViewModel.h"

@interface DemoSubViewCell : UITableViewCell
- (void)bindCellWithDataModel:(DemoSubViewModel *)dataModel;
@end


@interface DemoCuntomSubView : UIView
@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UILabel *label3;
- (void)setLabelData:(DemoSubViewItemModel *)dataModel;
@end
