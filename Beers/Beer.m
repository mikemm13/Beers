//
//  Beer.m
//  Beers
//
//  Created by Miguel Martin Nieto on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Beer.h"

@implementation Beer

@synthesize country = _country;
- (NSString *)name{
    return self->name;
}
- (void)setName:(NSString *)newName{
    self->name = newName;
}
- (NSString *)color{
    return self->color;
}
- (void)setColor:(NSString *)newColor{
    self->color = newColor;
}
- (NSUInteger)grade{
    return self->grade;
}
- (void)setGrade:(NSUInteger)newGrade{
    self->grade = newGrade;
}

- (NSString *)country{
    return _country;
}

- (void)setCountry:(NSString *)country{
    self->_country = country;
}



- (void)printBeerInfo{
    NSLog(@"Name: %@", name);
    NSLog(@"Color: %@", color);
    NSLog(@"Alcohol: %d", grade);
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
