//
//  Player Manager.m
//  Snakes and Ladders
//
//  Created by Kit Clark-O'Neil on 2018-08-05.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager


-(NSMutableArray*)createPlayerswithName: (int)players {
    

    NSMutableArray *playerArray = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < players; i++)
    {
        
        Player *newPlayer = [[Player alloc] init];
        NSString *player =[[NSString alloc] initWithFormat:@"Player-"];
        NSString *newPlayerName = [player stringByAppendingString:[NSString stringWithFormat:@"%d",i]];
        newPlayer.name = newPlayerName;
        [playerArray addObject:newPlayer];
    }
    return playerArray;
  
    
}
@end
