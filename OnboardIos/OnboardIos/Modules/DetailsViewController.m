//
//  DetailsViewController.m
//  OnboardIos
//
//  Created by Taqtile on 5/4/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "DetailsViewController.h"
#import "Users.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController
{
    NSMutableArray *_details;
}

@synthesize dict;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //criando a relacao do datasource e delegate com o componente da nib
    tableview.dataSource = self;
    tableview.delegate = self;
    _details = [NSMutableArray new];
    
    //manipulacao para utilizar o metodo cellForRowAtIndexPath()
    NSMutableDictionary *identifier = [NSMutableDictionary new];
    [identifier setValue:[NSString stringWithFormat:@"%@",dict[@"id"]] forKey:@"value"];
    [identifier setValue:@"ID" forKey:@"category"];
    [_details addObject:identifier];
    
    NSMutableDictionary *first_name = [NSMutableDictionary new];
    [first_name setValue:dict[@"first_name"] forKey:@"value"];
    [first_name setValue:@"First Name" forKey:@"category"];
    [_details addObject:first_name];
    
    NSMutableDictionary *last_name = [NSMutableDictionary new];
    [last_name setValue:dict[@"last_name"] forKey:@"value"];
    [last_name setValue:@"Last Name" forKey:@"category"];
    [_details addObject:last_name];
    
    NSMutableDictionary *avatar = [NSMutableDictionary new];
    [avatar setValue:dict[@"avatar"] forKey:@"value"];
    [avatar setValue:@"Avatar" forKey:@"category"];
    [_details addObject:avatar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

     
     - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
    {
        static NSString *CellIdentifer = @"CellIdentifier";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifer];
        
        // Using a cell identifier will allow your app to reuse cells as they come and go from the screen.
        if (cell == nil)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifer];
        }
        
        //pegando os dicionarios de cada linha
        NSUInteger row = [indexPath row];
        NSDictionary *dic = [_details objectAtIndex:row];
        
        //setando os valores de cada linha
        cell.textLabel.text = dic[@"category"];
        cell.detailTextLabel.text = dic[@"value"];

        return cell;
    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_details count];
}
@end
