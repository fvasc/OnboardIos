//
//  DetailsViewController.h
//  OnboardIos
//
//  Created by Taqtile on 5/4/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Users;

@interface DetailsViewController : UIViewController
{
    Users *users;
}
@property (nonatomic, retain) Users *users;

@end
