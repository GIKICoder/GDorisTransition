//
//  GCommentTableViewCell.m
//  GDorisTransition_Example
//
//  Created by GIKI on 2020/6/11.
//  Copyright © 2020 810373457@qq.com. All rights reserved.
//

#import "GCommentTableViewCell.h"
#import "Masonry.h"
@interface GCommentTableViewCell()
@property (nonatomic, strong) UIImageView * avatarView;
@property (nonatomic, strong) UILabel * nameLabel;
@property (nonatomic, strong) UILabel * contentLabel;
@end
@implementation GCommentTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = UIColor.whiteColor;
        [self.contentView addSubview:({
            UIImageView * imageView = [UIImageView new];
            imageView.backgroundColor = UIColor.redColor;
            imageView.contentMode = UIViewContentModeScaleToFill;
            imageView.layer.cornerRadius = 20;
            imageView.layer.masksToBounds = YES;
            _avatarView = imageView;
            _avatarView;
        })];
        [self.contentView addSubview:({
            UILabel * label = [UILabel new];
            label.textColor = UIColor.grayColor;
            label.font = [UIFont systemFontOfSize:16];
            label.textAlignment = NSTextAlignmentLeft;
            _nameLabel = label;
            label;
        })];
        [self.contentView addSubview:({
            UILabel * label = [UILabel new];
            label.textColor = UIColor.blackColor;
            label.font = [UIFont systemFontOfSize:15];
            label.textAlignment = NSTextAlignmentLeft;
            label.numberOfLines = 0;
            _contentLabel = label;
            label;
        })];
        
        [self.avatarView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(40);
            make.left.mas_equalTo(15);
            make.top.mas_equalTo(15);
        }];
        [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.avatarView.mas_top);
            make.left.mas_equalTo(self.avatarView.mas_right).mas_offset(10);
        }];
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.nameLabel.mas_bottom).mas_offset(5);
            make.left.mas_equalTo(self.avatarView.mas_right).mas_offset(10);
            make.right.mas_equalTo(self.contentView.mas_right).mas_offset(-15);
        }];
    }
    return self;
}

- (void)setConfig:(NSDictionary *)config
{
    _config = config;
    self.nameLabel.text = [config objectForKey:@"name"];
    self.contentLabel.text = [config objectForKey:@"review"];
}
@end
