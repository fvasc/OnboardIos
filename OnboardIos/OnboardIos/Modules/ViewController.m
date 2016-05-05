//
//  ViewController.m
//  OnboardIos
//
//  Created by Taqtile on 5/4/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "ViewController.h"
#import "Users.h"
#import "DetailsViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    Users *_users;
}


@synthesize tableView = _tableview;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //criando a relacao do datasource e delegate com o componente da nib
    _tableview.dataSource = self;
    _tableview.delegate = self;

    
    // limitar o scroll com relacao aos dados existentes
    _tableview.bounces = NO;
    
    
    _users = (Users*)[[Users alloc] init];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of anyresources that can be recreated.
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
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifer];
    }
    
    NSUInteger row = [indexPath row];
    NSDictionary *dict = [[Users list:@1] objectAtIndex:row];

    
    //informacao de cada linha
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", dict[@"first_name"], dict[@"last_name"]];
    NSNumber *identifier = dict[@"id"];
    int count = [[_users getViewCount:identifier] intValue];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"ID: %@ - Count: %d", identifier, count];
    
    //quando o usuario ainda nao foi visualizado

    if (count==0)
    {
        cell.textLabel.font=[UIFont fontWithName:@"Arial Rounded MT Bold"  size:15.0];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView  didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.textLabel.font=[UIFont fontWithName:@"Arial Rounded MT Bold"  size:11.0];
    
    NSUInteger row = [indexPath row];
    NSDictionary *dict = [[Users list:@1] objectAtIndex:row];
    NSNumber *identifier = dict[@"id"];

    [_users incrementViewCount:identifier];
    int count = [[_users getViewCount:identifier] intValue];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"ID: %@ - Count: %d", identifier, count];
   
    DetailsViewController  *detailViewController = [[DetailsViewController alloc] init];
    
    //envia dictionary para o controller do detalhe
    [detailViewController setDict:dict];
    
    // Push it onto the top of the navigation controller's stack
    [[self navigationController] pushViewController:detailViewController
                                           animated:YES];

}



@end
