//
//  Person.h
//  Beers
//
//  Created by Miguel Martin Nieto on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//1st properties
@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSUInteger age;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, getter = isMarried) BOOL married;

//2nd class method
+ (id)personWithName:(NSString *)name;
+ (id)personWithName:(NSString *)name andAdress:(NSString*)address;

//3rd inits
- (id)init; //overwrite
- (id)initWithName:(NSString *)name;
- (id)initWithName:(NSString *)name andAddress:(NSString *)address;
- (id)initWithName:(NSString *)name andAddress:(NSString *)address andAge:(NSUInteger)age; // Designated initializer

@end
