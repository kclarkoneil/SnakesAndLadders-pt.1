//
//  Board.m
//  Snakes and Ladders
//
//  Created by Kit Clark-O'Neil on 2018-08-05.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "Board.h"

@implementation Board


- (instancetype)init
{
    self = [super init];
    if (self) {
        NSDictionary *newLadders = @{ @4: @10, @9: @31, @17: @7, @20: @38, @28: @84, @40: @59, @51: @67, @63: @81, @89: @26, @95: @75, @99: @78};
        _boardSetup = newLadders;
    }
    return self;
}

@end
