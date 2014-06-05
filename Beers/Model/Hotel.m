//
//  Hotel.m
//  Beers
//
//  Created by Miguel Martin Nieto on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Hotel.h"

@interface Hotel ()

@property (nonatomic,strong) NSMutableDictionary *rooms;

@end

@implementation Hotel
- (NSMutableDictionary *)rooms
{
    if (_rooms == nil) {
        _rooms = [[NSMutableDictionary alloc] init];
    }
    return _rooms;
}
- (void)addPerson:(Person *)p toRoom:(NSString *)room{
    [self.rooms setObject:p forKey:room];
}
- (NSArray *)allRooms{
    return [self.rooms allKeys];
}
- (Person *)whoSleepsAtRoom:(NSString *)room{
    return [self.rooms objectForKey:room];
}
- (NSUInteger)numberOfOccupiedRooms{
    return [self.rooms count];
}
@end
