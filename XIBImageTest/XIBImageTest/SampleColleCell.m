//
//  SampleColleCell.m
//  XIBImageTest
//
//  Created by Naoki_Sawada on 2016/06/15.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import "SampleColleCell.h"
#import "State.h"

@implementation SampleColleCell



- (void)configureCell:(State *)state {
    
    self.label.text = state.title;
    self.button.selected = state.selected;
}

@end
