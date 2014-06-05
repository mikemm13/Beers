//
//  BeerList.m
//  Beers
//
//  Created by Miguel Martin Nieto on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BeerList.h"

@interface BeerList ()

@property (nonatomic, strong) NSMutableArray *beerList;

@end

@implementation BeerList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _beerList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addBeer:(Beer *)beer{
    [self.beerList addObject:beer];
}

- (void)removeBeer:(Beer *)beer{
    [self.beerList removeObject:beer];
}

- (NSUInteger)count{
    return [self.beerList count];
}

- (NSArray *)allBeers{
    return self.beerList;
}

@end
