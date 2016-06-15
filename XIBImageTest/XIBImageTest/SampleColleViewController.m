//
//  SampleColleViewController.m
//  XIBImageTest
//
//  Created by Naoki_Sawada on 2016/06/15.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import "SampleColleViewController.h"
#import "SampleColleCell.h"
#import "State.h"

@interface SampleColleViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *colleView;
@property (nonatomic) NSMutableArray *testArray;

@end

@implementation SampleColleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _testArray = [NSMutableArray new];
    
    for (NSInteger i =0; i < 20; i++) {
        State *state = [State new];
        state.title = [NSString stringWithFormat:@"title_%@", @(i)];
        state.selected = NO;
        
        [self.testArray addObject:state];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.testArray.count;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SampleColleCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ColleCell" forIndexPath:indexPath];
    [cell configureCell:self.testArray[indexPath.row]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    State *state = self.testArray[indexPath.row];
    state.selected = !state.selected;
    
    [collectionView reloadData];
}


@end
