//
//  ViewController.m
//  MyTableView
//
//  Created by Miguel S. Mendoza on 30/11/14.
//  Copyright (c) 2014 NetRunners. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    data = [NSArray arrayWithObjects:@"Ashley Riot", @"Sydney Losstarot", @"Joshua Bardorba", nil];
}

#pragma mark UITableViewDelegate Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return data.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSString *object = data[indexPath.row];
    cell.textLabel.text = object;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Leà Monde"
                                             message:data[indexPath.row]
                                             delegate:self
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
    [theAlert show];
}

@end
