//
//  YYMovieController.m
//  movie
//
//  Created by 杨洋 on 15/8/25.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "YYMovieController.h"
#import "YYMovieCell.h"
#import <SDWebImage/UIImageView+WebCache.h>


@interface YYMovieController ()<UICollectionViewDataSource,UICollectionViewDelegate>
{
    BOOL editing ;
}
@end

@implementation YYMovieController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView] ;
    
    [self initNagivationItem] ;
    // Do any additional setup after loading the view.
}


- (void) initView
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init] ;
    
    layout.scrollDirection = UICollectionViewScrollDirectionVertical ;
    CGFloat ITEM_WITDH = ([UIScreen mainScreen].bounds.size.width - 20) / 3.0f ;
    CGFloat ITEM_HEIGHT = ITEM_WITDH * 1.5f ;
    layout.itemSize = CGSizeMake(ITEM_WITDH, ITEM_HEIGHT) ;
    layout.minimumLineSpacing = 5.0f ;
    layout.minimumInteritemSpacing = 0.0f ;
    layout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5) ;
    
    YYMovieListView *listView = [[YYMovieListView alloc] initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:layout] ;
    
    listView.backgroundColor = [UIColor whiteColor] ;
    listView.collectionViewLayout = layout ;
    listView.delegate = self ;
    listView.dataSource = self ;
    
    [self.view addSubview:listView] ;
}

- (void) initNagivationItem
{
    UIBarButtonItem *edit = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStyleDone target:self action:@selector(edit)] ;
    self.navigationItem.rightBarButtonItem = edit ;
    
}

- (void) edit
{
    editing = !editing ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20 ;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *idx = @"Movie" ;
    [collectionView registerClass:[YYMovieCell class] forCellWithReuseIdentifier:idx] ;
    YYMovieCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:idx forIndexPath:indexPath] ;
    [cell.image sd_setImageWithURL:[NSURL URLWithString:@"http://cc.cocimg.com/api/uploads/150707/504851a01d525a2a982b9d56c6e54267.jpg"] ] ;
    
    return cell ;
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES ;
}

@end
