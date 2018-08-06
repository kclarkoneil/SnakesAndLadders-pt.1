//
//  Player.m
//  Snakes and Ladders
//
//  Created by Kit Clark-O'Neil on 2018-08-05.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "Player.h"

@implementation Player

-(void)roll {
    int diceRoll = arc4random_uniform(6) + 1;
    self.currentPosition += diceRoll;
    NSLog(@"You rolled %i", diceRoll);
}
@end
