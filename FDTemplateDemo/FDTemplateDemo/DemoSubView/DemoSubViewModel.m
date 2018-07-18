//
//  DemoSubViewModel.m
//  FDTemplateDemo
//
//  Created by qiwen on 2018/7/17.
//  Copyright © 2018年 qiwen. All rights reserved.
//

#import "DemoSubViewModel.h"

@implementation DemoSubViewItemModel

@end



@implementation DemoSubViewModel
- (NSString *)classNameForCell {
    NSString *modelClassName = NSStringFromClass([self class]);
    NSRange range = [modelClassName rangeOfString:@"Model"];
    NSAssert(range.location != NSNotFound, @"cell对应的model起名格式不一致!");
    NSString *cellClassName = [NSString stringWithFormat:@"%@Cell", [modelClassName substringToIndex:(range.location)]];
    
    return cellClassName;
}

+ (NSArray *)metaData {
    DemoSubViewModel *model = [[DemoSubViewModel alloc] init];
    model.titleString = @"我只是个标题";
    DemoSubViewItemModel *item1 = [[DemoSubViewItemModel alloc] init];
    item1.label1String = @"我是世界饿啊给啊看到过卡俄破解哦啊鸡尾酒怕忘记阿胶【阿娇我们分开的撒娇啊额啊喷雾精品佛看见啊胃口破开平改坡我就怕啊我看破解我怕没阿嘎恶评看我";
    item1.label2String = @"楼上什么鬼";
    item1.label3String = @"一楼键盘挂了";
    DemoSubViewItemModel *item2 = [[DemoSubViewItemModel alloc] init];
    item2.label1String = @"MDZZ";
    item2.label2String = @"XxxxxxxxxxXXxxxXXXxxxXXxx。C罗NB           事实上 邪恶啊问我";
    item2.label3String = @"哦";
    
    DemoSubViewItemModel *item3 = [[DemoSubViewItemModel alloc] init];
    item3.label1String = @"Since iOS8, -tableView:heightForRowAtIndexPath: will be called more times than we expect, we can feel these extra calculations when scrolling. So we provide another API with cache by index path:";
    item3.label2String = @"how old are you？";
    item3.label3String = @"怎么老是你？";
    model.itemModel = @[item1,item2,item3];
    
    return @[model];
}
@end
