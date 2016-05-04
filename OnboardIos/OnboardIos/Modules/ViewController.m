//
//  ViewController.m
//  OnboardIos
//
//  Created by Taqtile on 5/4/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "ViewController.h"
#import "Users.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize tableView = _tableview;
@synthesize users;

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableview.dataSource = self;
    _tableview.delegate = self;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of anyresources that can be recreated.
}

- (void)configureView
{
    // Update the user interface for the detail item.
    self.users = [Users list:@1];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [ [Users list:[NSNumber numberWithInt:section] ]count];
}

// This will tell your UITableView what data to put in which cells in your table.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifer = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifer];
    
    // Using a cell identifier will allow your app to reuse cells as they come and go from the screen.
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifer];
    }
    
    // Deciding which data to put into this particular cell.
    // If it the first row, the data input will be "Data1" from the array.
    NSUInteger row = [indexPath row];
    NSDictionary *dict = [[Users list:@1] objectAtIndex:row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", dict[@"first_name"], dict[@"last_name"]];
    
    return cell;
}

@end
