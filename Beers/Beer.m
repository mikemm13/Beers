//
//  Beer.m
//  Beers
//
//  Created by Miguel Martin Nieto on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Beer.h"

@implementation Beer


- (void)printBeerInfo{
    NSLog(@"Name: %@", name);
    NSLog(@"Color: %@", color);
    NSLog(@"Alcohol: %d", alcohol);
}

- (void)printBeerInfoWithHeader:(NSString *)header{
    NSLog(@"%@",header);
    [self printBeerInfo];
    
}

- (void)printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer{
    
}

- (void)printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer andNumberOfEmojis:(NSUInteger)numberOfEmojis{
    
}
@end
