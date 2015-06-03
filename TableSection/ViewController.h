//
//  ViewController.h
//  TableSection
//
//  Created by macrong on 15/6/3.
//  Copyright (c) 2015年 macRong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableview;


@end

