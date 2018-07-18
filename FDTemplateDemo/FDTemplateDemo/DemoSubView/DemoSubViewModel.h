//
//  DemoSubViewModel.h
//  FDTemplateDemo
//
//  Created by qiwen on 2018/7/17.
//  Copyright © 2018年 qiwen. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface DemoSubViewItemModel : NSObject

@property (nonatomic , copy) NSString *label1String;
@property (nonatomic , copy) NSString *label2String;
@property (nonatomic , copy) NSString *label3String;

@end

@interface DemoSubViewModel : NSObject

@property (nonatomic , copy) NSString *titleString;
@property (nonatomic, strong) NSArray<DemoSubViewItemModel *> *itemModel;

- (NSString *)classNameForCell;

+ (NSArray *)metaData;


@end
