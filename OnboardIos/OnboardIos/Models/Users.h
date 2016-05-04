//
//  Users.h
//  OnboardIos
//
//  Created by Taqtile on 5/4/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Users : NSObject


+ (NSArray *)list:(NSNumber *)page;
- (void)incrementViewCount:(NSNumber *)identifier;
- (void)resetViewCount:(NSNumber *)identifier;
- (NSNumber *)getViewCount:(NSNumber *)identifier;

@end
