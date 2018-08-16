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
#import "PlayerManager.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        PlayerManager *gameTime = [[PlayerManager alloc] init];
        
        // Initialize player creation and board with message
        NSLog(@"Welcome to Snakes and Ladders!How many players would you like to play with?");
        
        
        Board *gameBoard = [[Board alloc] init];
        InputHandler *input = [[InputHandler alloc] init];
        NSString *Input = [input getInput];
        int playersNumbers = [Input intValue];
        NSMutableArray *players = [gameTime createPlayerswithName:playersNumbers];
        
        NSMutableString *scoreboard = [[NSMutableString alloc] init];
        scoreboard = [@"Scoreboard - " mutableCopy];
        for (Player *testPlayer in players)
        
        {
            NSLog(@"The players are, %@", testPlayer.name);
        
        }
        int i = 0;
        while (true)
        {
            int j = i % playersNumbers;
            {
            
                Player *currentPlayer = players[j];
                // Start game with while loop
                
                {
                    //initate currentPlayer's turn
                    NSLog(@"It's %@'s turn!", currentPlayer.name);
                    InputHandler *input = [[InputHandler alloc] init];
                    NSString *turn = [input getInput];
                    //Roll dice if user inputs
                    if ([turn isEqualToString:@"roll"] || [turn isEqualToString:@"r"]) {
                        [currentPlayer roll];
                        for (NSNumber *key in gameBoard.boardSetup) {
                            if (currentPlayer.currentPosition == [key intValue])
                            currentPlayer.currentPosition = [[gameBoard.boardSetup objectForKey:key] intValue];
                        }
                        NSString *playerScores = [NSString stringWithFormat:@"\n %@ : %i", currentPlayer.name, currentPlayer.currentPosition];
                        scoreboard = [[scoreboard stringByAppendingString:playerScores] mutableCopy];
                       
                        NSLog(@"%i", currentPlayer.currentPosition);
                    }
                    
//                    NSNumber *currentScoreBoard = [NSNumber numberWithInt:currentPlayer.currentPosition];
                    
                    if (j == playersNumbers - 1)
                    {
                        NSLog(@"%@",scoreboard);
                        scoreboard = [@"CurrentScore - " mutableCopy];

                    }
                    
                    if (currentPlayer.currentPosition >= 100)
                    {
                        NSLog(@"Congratulations %@",currentPlayer);
                    break;
                    }
                                    }
                    i ++;
                }
            }
        }
    
    return 0;
}
