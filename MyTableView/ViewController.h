//
//  ViewController.h
//  MyTableView
//
//  Created by Miguel S. Mendoza on 30/11/14.
//  Copyright (c) 2014 NetRunners. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate> {
    NSArray *data;
}

@property (weak, nonatomic) IBOutlet UITableView *myTable;
@property (weak, nonatomic) IBOutlet UILabel *labelView;

@end

