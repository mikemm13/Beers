//
//  Person.m
//  Beers
//
//  Created by Miguel Martin Nieto on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Person.h"

@implementation Person


+ (id)personWithName:(NSString *)name{
    Person *p = [[Person alloc] initWithName:name];
    return p;
}

+ (id)personWithName:(NSString *)name andAdress:(NSString *)address{
    Person *p = [[Person alloc] initWithName:name andAddress:address];
    return p;
}

#pragma mark - Inits
- (id)init{
    self = [self initWithName:@"John Doe" andAddress:nil andAge:22];
    return self;
}

- (id)initWithName:(NSString *)name{
    self = [self initWithName:name andAddress:nil andAge:22];
    if (self != nil) { //initialize
        _name = name;
    }
    return self;
}


- (id)initWithName:(NSString *)name andAddress:(NSString *)address{
    self = [self initWithName:name andAddress:address andAge:22];
    if (self != nil) { //initialize
        _name = name;
        _address = address;
    }
    return self;
}


- (id)initWithName:(NSString *)name andAddress:(NSString *)address andAge:(NSUInteger)age{
    self = [super init];
    if (self != nil) { //initialize
        _name = name;
        _address = address;
        _age = age;
    }
    return self;
}



@end
