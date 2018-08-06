//
//  main.m
//  Snakes and Ladders
//
//  Created by Kit Clark-O'Neil on 2018-08-05.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Board.h"
#import "Player.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Initialize player1 and board with message
        NSLog(@"Welcome to Snakes and Ladders!To start the game type [roll] or [r]");
        Player *player1 = [[Player alloc] init];
        Board *gameBoard = [[Board alloc] init];
        
        // Start game with while loop
        while (player1.currentPosition < 100)
        {
            //initate player1's turn
            NSLog(@"It's %@'s turn!", player1);
            InputHandler *input = [[InputHandler alloc] init];
            NSString *turn = [input getInput];
            //Roll dice if user inputs
            if ([turn isEqualToString:@"roll"] || [turn isEqualToString:@"r"]) {
                [player1 roll];
                for (NSNumber *key in gameBoard.boardSetup) {
                    if (player1.currentPosition == [key intValue])
                    player1.currentPosition = [[gameBoard.boardSetup objectForKey:key] intValue];
                }
            
            }
            NSLog(@"%i", player1.currentPosition);
            if (player1.currentPosition >= 100)
            {
                NSLog(@"Congratulations %@",player1);
            break;
            }
        }
        
    }
    return 0;
}
