//
//  EuroConverter.m
//  Beers
//
//  Created by Miguel Martin Nieto on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroConverter.h"
#define CONVERT_VALUE 166.386

@implementation EuroConverter

+ (float)convertFromEuroToPeseta:(float)euros{
    return euros * CONVERT_VALUE;
}

+ (float)convertFromPesetaToEuro:(int)pesetas{
    return pesetas / CONVERT_VALUE;
}

- (float)convertToEuro{
    return self.money/CONVERT_VALUE;
}

- (int)convertToPeseta{
    return self.money * CONVERT_VALUE;
}




@end
