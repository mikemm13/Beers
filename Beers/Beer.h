//
//  Beer.h
//  Beers
//
//  Created by Miguel Martin Nieto on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beer : NSObject {
    //iVars
    NSString *name;
    NSString *color;
    NSUInteger grade;
}

- (void)printBeerInfo;
- (void)printBeerInfoWithHeader:(NSString *)header;
- (void)printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer;
// printBeerInfo(String header, String footer, int numberOfEmojis)
- (void)printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer andNumberOfEmojis:(NSUInteger)numberOfEmojis;

@end
