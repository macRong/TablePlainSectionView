//
//  ViewController.m
//  TableSection
//
//  Created by macrong on 15/6/3.
//  Copyright (c) 2015年 macRong. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "EMMallSectionView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - tableView_Delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 7;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectio
{
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return   76;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    EMMallSectionView *sectionView =  [EMMallSectionView showWithName:[NSString stringWithFormat:@"section_title_%ld",section]];
    sectionView.tableView = self.tableview;
    sectionView.section = section;
    return sectionView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return [EMMallSectionView getSectionHeight];
}

- (UITableViewCell *)tableView:(UITableView *)tableVie cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableVie dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
