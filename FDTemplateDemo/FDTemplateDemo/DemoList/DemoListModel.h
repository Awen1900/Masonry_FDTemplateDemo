//
//  DemoListModel.h
//  FDTemplateDemo
//
//  Created by qiwen on 2018/7/2.
//  Copyright © 2018年 qiwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DemoListModel : NSObject

@property (copy , nonatomic) NSString *title;
@property (copy , nonatomic) NSString *comment;
@property (copy , nonatomic) NSString *time;
@property (copy , nonatomic) NSString *author;
@property (copy , nonatomic) NSString *distance;


- (NSString *)classNameForCell;

+ (NSArray *)metaData;

@end
