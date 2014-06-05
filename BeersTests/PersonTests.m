//
//  PersonTests.m
//  Beers
//
//  Created by Miguel Martin Nieto on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"
@interface PersonTests : XCTestCase

@end

@implementation PersonTests

#define TEST_NAME @"John Doe"
#define TEST_AGE 18

- (void)testCanCreateAPerson{
    Person *p = [[Person alloc] init];
    XCTAssertNotNil(p, @"OMG! 💀");
    XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, found %@ 🌈 🐴", TEST_NAME, p.name);
    XCTAssertEqual(TEST_AGE, p.age, @"Expected %d, found %d", TEST_AGE, p.age);
    XCTAssertEqualObjects(nil, p.address, @"Expected %@, found %@ 🌈 🐴", nil, p.address);
}

- (void)testCanCreateAPersonWithName{
    NSString *name = @"Miguel";
    NSUInteger age = 22;
    
    Person *p = [[Person alloc] initWithName:name];
    XCTAssertNotNil(p, @"OMG! 💀");
    XCTAssertEqualObjects(name, p.name, @"Expected %@, found %@ 🌈 🐴", name, p.name);
    XCTAssertEqual(age, p.age, @"Expected %d, found %d", age, p.age);
    XCTAssertEqualObjects(nil, p.address, @"Expected %@, found %@ 🌈 🐴", nil, p.address);
    
}

- (void)testCanCreateAPersonWithNameAndAddress{
    NSString *name = @"Miguel";
    NSUInteger age = 22;
    NSString *address = @"Alameda 22";

    Person *p = [[Person alloc] initWithName:name andAddress:address];
    XCTAssertNotNil(p, @"OMG! 💀");
    XCTAssertEqualObjects(name, p.name, @"Expected %@, found %@ 🌈 🐴", name, p.name);
    XCTAssertEqual(age, p.age, @"Expected %d, found %d", age, p.age);
    XCTAssertEqualObjects(address, p.address, @"Expected %@, found %@ 🌈 🐴", address, p.address);
    
}

- (void)testCanCreateAPersonWithNameAndAddressAndAge{
    NSString *name = @"Miguel";
    NSUInteger age = 26;
    NSString *address = @"Alameda 22";
    Person *p = [[Person alloc] initWithName:name andAddress:address andAge:age];
    XCTAssertNotNil(p, @"OMG! 💀");
    XCTAssertEqualObjects(name, p.name, @"Expected %@, found %@ 🌈 🐴", name, p.name);
    XCTAssertEqual(age, p.age, @"Expected %d, found %d", age, p.age);
    XCTAssertEqualObjects(address, p.address, @"Expected %@, found %@ 🌈 🐴", address, p.address);
    
}

- (void)testCanCreateAPersonWithClassMethodPersonWithName{
    NSString *name = @"Miguel";
    NSUInteger age = 22;
    NSString *address = nil;
    Person *p = [Person personWithName:name];
    XCTAssertNotNil(p, @"OMG! 💀");
    XCTAssertEqualObjects(name, p.name, @"Expected %@, found %@ 🌈 🐴", name, p.name);
    XCTAssertEqual(age, p.age, @"Expected %d, found %d", age, p.age);
    XCTAssertEqualObjects(address, p.address, @"Expected %@, found %@ 🌈 🐴", address, p.address);
    
}

- (void)testCanCreateAPersonWithClassMethodPersonWithNameAndAddress{
    NSString *name = @"Miguel";
    NSUInteger age = 22;
    NSString *address = @"Alameda 22";
    Person *p = [Person personWithName:name andAdress:address];
    XCTAssertNotNil(p, @"OMG! 💀");
    XCTAssertEqualObjects(name, p.name, @"Expected %@, found %@ 🌈 🐴", name, p.name);
    XCTAssertEqual(age, p.age, @"Expected %d, found %d", age, p.age);
    XCTAssertEqualObjects(address, p.address, @"Expected %@, found %@ 🌈 🐴", address, p.address);

}



@end
