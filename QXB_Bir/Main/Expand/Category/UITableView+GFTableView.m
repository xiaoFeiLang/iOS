//
//  UITableView+GFTableView.m
//  QXB_Bir
//
//  Created by ChenWei on 16/7/6.
//  Copyright © 2016年 QXB. All rights reserved.
//

#import "UITableView+GFTableView.h"

@implementation UITableView (GFTableView)
+ (UITableView *)initWithTableView:(CGRect)frame withDelegate:(id)delegate
{
    UITableView *tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
    tableView.delegate = delegate;
    tableView.dataSource = delegate;
    //将系统的Separator左边不留间隙
    tableView.separatorInset = UIEdgeInsetsZero;
    return tableView;
}
@end
