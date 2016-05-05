//
//  DetailsViewController.h
//  OnboardIos
//
//  Created by Taqtile on 5/4/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NSDictionary;

@interface DetailsViewController : UIViewController  <UITableViewDelegate, UITableViewDataSource>
{
    NSDictionary *dict;
    __weak IBOutlet UITableView *tableview;
}

@property (nonatomic, retain) NSDictionary *dict;

@end
