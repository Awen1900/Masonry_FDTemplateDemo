//
//  DemoListModel.m
//  FDTemplateDemo
//
//  Created by qiwen on 2018/7/2.
//  Copyright © 2018年 qiwen. All rights reserved.
//

#import "DemoListModel.h"

@implementation DemoListModel

- (NSString *)classNameForCell {
    NSString *modelClassName = NSStringFromClass([self class]);
    NSRange range = [modelClassName rangeOfString:@"Model"];
    NSAssert(range.location != NSNotFound, @"cell对应的model起名格式不一致!");
    NSString *cellClassName = [NSString stringWithFormat:@"%@Cell", [modelClassName substringToIndex:(range.location)]];
    
    return cellClassName;
}
+ (instancetype)modelWithTitle:(NSString *)title andComment:(NSString *)comment andTime:(NSString *)time {
    
    DemoListModel *model = [[DemoListModel alloc] init];
    model.title = title;
    model.comment = comment;
    model.time = time;
    model.author = @"柯南";
    model.distance = @">100Km";
    
    return model;
}

+ (NSArray *)metaData {
    DemoListModel *model1 = [DemoListModel modelWithTitle:@"Hello world" andComment:@"Since iOS8, -tableView:heightForRowAtIndexPath: will be called more times than we expect, we can feel these extra calculations when scrolling. So we provide another API with cache by index path:" andTime:@"2018-07-01 12:12"];
    DemoListModel *model2 = [DemoListModel modelWithTitle:@"YYLabel的简单使用" andComment:@"不得不说 YYKit 框架确实很牛，其YYLabel组件在富文本显示和操作方面相当强大，尤其是其异步渲染，让界面要多流畅有多流畅，这里我们介绍下简单的使用,这里只是简单介绍下YYLaabel的简单的用法，要实现类似微博的富文本形式 链接点击 等等，使用YYLabel也是超级方便的，abel的简单的用法，要实现类似微博的富文本形式 链接点击 等等，使用YYLabel也是超级方便的，bel的简单的用法，要实现类似微博的富文本形式 链接点击 等等，使用YYLabel也是超级方便的，大家可以自己去研究下..." andTime:@"2018-07-02 11:12"];
    DemoListModel *model3 = [DemoListModel modelWithTitle:@"Hello world" andComment:@"Since iOS8, -tableView:heightForRowAtIndexPath: will be called more times than we expect, we can feel these extra calculations when scrolling. So we provide another API with cache by index path:" andTime:@"2018-07-01 12:12"];
    DemoListModel *model4 = [DemoListModel modelWithTitle:@"Hello world" andComment:@"Since iOS8, -tableView:heightForRowAtIndexPath: will be called more times than we expect, we can feel these extra calculations when scrolling. So we provide another API with cache by index path:" andTime:@"2018-07-01 12:12"];
    DemoListModel *model5 = [DemoListModel modelWithTitle:@"Hello world" andComment:@"Since iOS8, -tableView:heightForRowAtIndexPath: will be called more times than we expect, we can feel these extra calculations when scrolling. So we provide another API with cache by index path:" andTime:@"2018-07-01 12:12"];
    DemoListModel *model6 = [DemoListModel modelWithTitle:@"Hello world" andComment:@"Since iOS8, -tableView:heightForRowAtIndexPath: will be called more times than we expect, we can feel these extra calculations when scrolling. So we provide another API with cache by index path:" andTime:@"2018-07-01 12:12"];
    DemoListModel *model7 = [DemoListModel modelWithTitle:@"Hello world" andComment:@"Since iOS8, -tableView:heightForRowAtIndexPath: will be called more times than we expect, we can feel these extra calculations when scrolling. So we provide another API with cache by index path:" andTime:@"2018-07-01 12:12"];
    DemoListModel *model8 = [DemoListModel modelWithTitle:@"Hello world" andComment:@"Since iOS8, -tableView:heightForRowAtIndexPath: will be called more times than we expect, we can feel these extra calculations when scrolling. So we provide another API with cache by index path:" andTime:@"2018-07-01 12:12"];
    return @[model1,model2,model3,model4,model5,model6,model7,model8];
}

@end
