//
//  ViewController.m
//  movie
//
//  Created by 杨洋 on 15/8/25.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "ViewController.h"
#import "YYTableView.h"
#import "YYMovieController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    
    YYTableView *tableview ;
    NSArray *array ;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = @[@"Collection View"] ;
    
    [self addTableView] ; 
}


- (void) addTableView
{
    tableview = [[YYTableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain] ;
    
    tableview.tableFooterView = [[UIView alloc] init] ;
    tableview.delegate = self ;
    tableview.dataSource = self ;
    
    [self.view addSubview:tableview] ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    //
}


#pragma UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array count] ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *idx = @"mine" ;
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:idx] ;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idx] ;
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:idx] ;
    }
    
    NSString *title = [array objectAtIndex:indexPath.row] ;
    
    cell.textLabel.text = title ;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator ;
    cell.detailTextLabel.text = @"The name is exits" ;
    
    return cell ;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.row == 0)
    {
        YYMovieController *movieCtr = [[YYMovieController alloc] init] ;
        [self.navigationController pushViewController:movieCtr animated:YES] ;
    }
    
}

- (BOOL)tableView:(UITableView *)tableView shouldShowMenuForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES ;
}


- (void)dealloc
{
    tableview = nil ;
    array = nil ;
}

@end
