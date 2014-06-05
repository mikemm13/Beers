//
//  Hotel.h
//  Beers
//
//  Created by Miguel Martin Nieto on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@interface Hotel : NSObject

- (void)addPerson:(Person *)p toRoom:(NSString *)room;
- (NSArray *)allRooms;
- (Person *)whoSleepsAtRoom:(NSString *)room;
- (NSUInteger)numberOfOccupiedRooms;

@end
