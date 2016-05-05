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

@synthesize users;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [users release];
    [nameField release];
    [serialNumberField release];
    [valueField release];
    [dateLabel release];
    [super dealloc];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [nameField setText:[possession possessionName]];
    [serialNumberField setText:[possession serialNumber]];
    [valueField setText:[NSString stringWithFormat:@"%d",
                         [possession valueInDollars]]];

    // Change the navigation item to display name of possession
    [[self navigationItem] setTitle:[possession possessionName]];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
