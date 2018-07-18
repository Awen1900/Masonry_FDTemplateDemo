//
//  DemoListCell.h
//  FDTemplateDemo
//
//  Created by qiwen on 2018/7/2.
//  Copyright © 2018年 qiwen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DemoListModel.h"

@interface DemoListCell : UITableViewCell

- (void)bindCellWithDataModel:(DemoListModel *)dataModel;

@end
