//
//  XHEmotionCollectionViewCell.m
//  MessageDisplayExample
//
//  Created by HUAJIE-1 on 14-5-3.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import "XHEmojiCollectionViewCell.h"

@interface XHEmojiCollectionViewCell ()


/**
 *  显示表情封面的控件
 */
@property (nonatomic, weak) UILabel *emotionLabel;

/**
 *  配置默认控件和参数
 */
- (void)setup;
@end

@implementation XHEmojiCollectionViewCell

#pragma setter method

- (void)setEmotion:(XHEmotion *)emotion {
    _emotion = emotion;
    
    // TODO:
    self.emotionLabel.text  = emotion.emojiCode;
}

#pragma mark - Life cycle

- (void)setup {
    if (!_emotionLabel) {
        UILabel *emotionLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, kXHEmojiViewSize, kXHEmojiViewSize)];

        emotionLabel.font = [UIFont systemFontOfSize:30];
        //emotionLabelemotionLabel.backgroundColor = [UIColor colorWithRed:0.000 green:0.251 blue:0.502 alpha:1.000];
        [self.contentView addSubview:emotionLabel];
        self.emotionLabel = emotionLabel;
        //self.backgroundColor = [UIColor redColor];
       
    }
}

- (void)awakeFromNib {
    [self setup];
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}

- (void)dealloc {
    self.emotion = nil;
}

@end
