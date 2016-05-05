//
//  Users.m
//  OnboardIos
//
//  Created by Taqtile on 5/4/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "Users.h"
#import "DebugMacros.h"

@implementation Users

- (instancetype)init
{
    self = [super init];
    if (self) {
        userViewCount = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (NSArray *)list:(NSNumber *)page{
    //DLog();
    
    NSMutableArray *users = [NSMutableArray new];
    //This is one way of creating a dictionary/array
    NSMutableDictionary *u1 = [NSMutableDictionary new];
    [u1 setValue:@1 forKey:@"id"];
    [u1 setValue:@"daniel" forKey:@"first_name"];
    [u1 setValue:@"pereira" forKey:@"last_name"];
    [u1 setValue:@"https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u1];
    
    NSMutableDictionary *u2 = [NSMutableDictionary new];
    [u2 setValue:@2 forKey:@"id"];
    [u2 setValue:@"iuri" forKey:@"first_name"];
    [u2 setValue:@"iuri" forKey:@"last_name"];
    [u2 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u2];
    
    NSMutableDictionary *u3 = [NSMutableDictionary new];
    [u3 setValue:@3 forKey:@"id"];
    [u3 setValue:@"felip" forKey:@"first_name"];
    [u3 setValue:@"vasc" forKey:@"last_name"];
    [u3 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u3];
    
    NSMutableDictionary *u4 = [NSMutableDictionary new];
    [u4 setValue:@4 forKey:@"id"];
    [u4 setValue:@"nathan" forKey:@"first_name"];
    [u4 setValue:@"sampoio" forKey:@"last_name"];
    [u4 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u4];
    
    NSMutableDictionary *u5 = [NSMutableDictionary new];
    [u5 setValue:@5 forKey:@"id"];
    [u5 setValue:@"matheu" forKey:@"first_name"];
    [u5 setValue:@"camps" forKey:@"last_name"];
    [u5 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u5];
    
    NSMutableDictionary *u6 = [NSMutableDictionary new];
    [u6 setValue:@6 forKey:@"id"];
    [u6 setValue:@"enri" forKey:@"first_name"];
    [u6 setValue:@"rashimot" forKey:@"last_name"];
    [u6 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u6];
    
    NSMutableDictionary *u7 = [NSMutableDictionary new];
    [u7 setValue:@7 forKey:@"id"];
    [u7 setValue:@"tab" forKey:@"first_name"];
    [u7 setValue:@"japa" forKey:@"last_name"];
    [u7 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u7];
    
    NSMutableDictionary *u8 = [NSMutableDictionary new];
    [u8 setValue:@8 forKey:@"id"];
    [u8 setValue:@"Bianca" forKey:@"first_name"];
    [u8 setValue:@"alt" forKey:@"last_name"];
    [u8 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u8];
    
    NSMutableDictionary *u9 = [NSMutableDictionary new];
    [u9 setValue:@9 forKey:@"id"];
    [u9 setValue:@"Felipe" forKey:@"first_name"];
    [u9 setValue:@"souza" forKey:@"last_name"];
    [u9 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u9];
    
    NSMutableDictionary *u10 = [NSMutableDictionary new];
    [u10 setValue:@10 forKey:@"id"];
    [u10 setValue:@"joao" forKey:@"first_name"];
    [u10 setValue:@"das neves" forKey:@"last_name"];
    [u10 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u10];
    
    NSMutableDictionary *u11 = [NSMutableDictionary new];
    [u11 setValue:@10 forKey:@"id"];
    [u11 setValue:@"rafekl" forKey:@"first_name"];
    [u11 setValue:@"matos" forKey:@"last_name"];
    [u11 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u11];
    NSMutableDictionary *u12 = [NSMutableDictionary new];
    [u12 setValue:@10 forKey:@"id"];
    [u12 setValue:@"guiilernmes" forKey:@"first_name"];
    [u12 setValue:@"afonso" forKey:@"last_name"];
    [u12 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u12];
    NSMutableDictionary *u13 = [NSMutableDictionary new];
    [u13 setValue:@10 forKey:@"id"];
    [u13 setValue:@"mikey" forKey:@"first_name"];
    [u13 setValue:@"pateat" forKey:@"last_name"];
    [u13 setValue:@"2https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg" forKey:@"avatar"];
    [users addObject:u13];
    return users;
}

- (void)incrementViewCount:(NSNumber *)identifier {
    DLog();
    
    BOOL create = YES;
    for (int a = 0; a < userViewCount.count; a++) {
        NSDictionary *dict = [userViewCount objectAtIndex:a];
        if (dict[@"id"]==identifier) {
            int increment = [dict[@"count"] intValue] + 1;
            NSNumber *numb = [NSNumber numberWithInt:increment];
            [dict setValue:numb forKey:@"count"];
            create = NO;
        }
    }
    
    if (create) { //criar se nao existir
        NSMutableDictionary *dict = [NSMutableDictionary new];
        [dict setValue:identifier forKey:@"id"];
        [dict setValue:@1 forKey:@"count"];
        [userViewCount addObject:dict];
    }
}

- (void)resetViewCount:(NSNumber *)identifier {
    DLog();
    
    for (int a = 0; a < userViewCount.count; a++) {
        NSDictionary *dict = [userViewCount objectAtIndex:a];
        if (dict[@"id"]==identifier) {
            [dict setValue:@0 forKey:@"count"];
        }
    }
}

- (NSNumber *)getViewCount:(NSNumber *)identifier {
    DLog();
    NSLog(@"%@", @"haahhashjdsjdjhdk");
    for (int a = 0; a < userViewCount.count; a++) {
        NSDictionary *dict = [userViewCount objectAtIndex:a];
        if (dict[@"id"]==identifier) {
            return dict[@"count"];
        }
    }
    return @0;
}
@end
