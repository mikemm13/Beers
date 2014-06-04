//
//  EuroConverter.h
//  Beers
//
//  Created by Miguel Martin Nieto on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EuroConverter : NSObject

@property float money;

- (float)convertToEuro;
- (int)convertToPeseta;

+ (float)convertFromEuroToPeseta:(float) euros;
+ (float)convertFromPesetaToEuro:(int) pesetas;

@end
