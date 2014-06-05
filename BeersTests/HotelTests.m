//
//  HotelTests.m
//  Beers
//
//  Created by Miguel Martin Nieto on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"
#import "Hotel.h"
@interface HotelTests : XCTestCase

@end

@implementation HotelTests

- (void)testAddPersonToRoom{
    Person *person = [[Person alloc] initWithName:@"Miguel"];
    Hotel *hotel = [[Hotel alloc] init];
    XCTAssertEqual(0, [hotel allRooms].count, @"");
    [hotel addPerson:person toRoom:@"123"];
    XCTAssertTrue([hotel allRooms].count == 1, @"");
    Person *personToTest = [[hotel rooms] valueForKey:@"123"];
    XCTAssertEqualObjects(personToTest.name, @"Miguel", @"");
}

- (void)testAllRooms{
    Hotel *hotel = [[Hotel alloc] init];
    XCTAssertTrue([hotel allRooms].count ==0, @"");
    for (int i=0; i<100; i++) {
        Person *person = [[Person alloc] init];
        [person setName:[NSString stringWithFormat:@"Person%d",i]];
        [hotel addPerson:person toRoom:[NSString stringWithFormat:@"%d",i]];
    }
    XCTAssertTrue([hotel allRooms].count == 100, @"");
    [[hotel allRooms] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        NSString *room = (NSString *)obj;
        NSString *s = [NSString stringWithFormat:@"%d",idx];
        XCTAssertEqualObjects(room, s, @"");
    }];
    
}

- (void)testWhoSleepsAtRoom{
        Hotel *hotel = [[Hotel alloc] init];
        for (int i=0; i<100; i++) {
            Person *person = [[Person alloc] init];
            [person setName:[NSString stringWithFormat:@"Person%d",i]];
            [hotel addPerson:person toRoom:[NSString stringWithFormat:@"%d",i]];
        }
        XCTAssertTrue([hotel allRooms].count == 100, @"");
        for (int i=0; i<100; i++) {
            Person *personToTest = [hotel whoSleepsAtRoom:[NSString stringWithFormat:@"%d",i]];
            NSString *s = [NSString stringWithFormat:@"Person%d",i];
            XCTAssertEqualObjects(personToTest.name, s, @"");
        }

}

@end
