//
//  HomeMenuCell.h
//  QXB_Bir
//
//  Created by ChenWei on 16/7/6.
//  Copyright © 2016年 QXB. All rights reserved.
//

#import "BaseTableViewCell.h"

@protocol GFHomeMenuCellDelegate<NSObject>
- (void)homeMenuCellClick:(long)sender;
@end

@interface HomeMenuCell : BaseTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView meunArray:(NSArray *)menuArray;

@property (nonatomic, weak) id<GFHomeMenuCellDelegate> delegate;

@end
