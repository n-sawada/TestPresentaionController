//
//  SampleColleCell.h
//  XIBImageTest
//
//  Created by Naoki_Sawada on 2016/06/15.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import <UIKit/UIKit.h>

@class State;

@interface SampleColleCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (void)configureCell:(State *)state;

@end
