//
//  BeerListTests.m
//  Beers
//
//  Created by Miguel Martin Nieto on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Beerlist.h"
#import "Beer.h"
@interface BeerListTests : XCTestCase

@end

@implementation BeerListTests

- (void)testCanCreateABeerList{
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertNotNil(allBeers, @"");
    XCTAssertEqual(0, [allBeers count], @"");
}
- (void)testCanCreateABeerListKVC{
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertNotNil(allBeers, @"");
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"] integerValue], @"");
}

- (void)testCanAddABeerToTheList{
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertEqual(0, [allBeers count], @"");
    
    Beer *mahou = [[Beer alloc] init];
    [allBeers addBeer:mahou];
    XCTAssertEqual(1, [allBeers count], @"");
}

- (void)testCanAddABeerToTheListKVC{
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"] integerValue], @"");
    
    Beer *mahou = [[Beer alloc] init];
    [allBeers addBeer:mahou];
    XCTAssertEqual(1, [[allBeers valueForKey:@"count"] integerValue], @"");
}

- (void)testCanRemoveABeerFromTheList{
    BeerList *allBeers = [[BeerList alloc] init];
    
    Beer *mahou = [[Beer alloc] init];
    [allBeers addBeer:mahou];
    XCTAssertEqual(1, [allBeers count] , @"");
    
    [allBeers removeBeer:mahou];
    XCTAssertEqual(0, [allBeers count], @"");
}

- (void)testCanRemoveABeerFromTheListKVC{
    BeerList *allBeers = [[BeerList alloc] init];
    
    Beer *mahou = [[Beer alloc] init];
    [allBeers addBeer:mahou];
    XCTAssertEqual(1, [[allBeers valueForKey:@"count"] integerValue], @"");
    
    [allBeers removeBeer:mahou];
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"] integerValue], @"");
}

- (void)testCanCountBeers{
    BeerList *allBeers = [[BeerList alloc] init];
    for (CGFloat i=0; i<100; i++) {
        [allBeers addBeer:[[Beer alloc] init]];
    }

    XCTAssertTrue(allBeers.count == 100, @"");
}

- (void)testCanCountBeersKVC{
    BeerList *allBeers = [[BeerList alloc] init];
    for (CGFloat i=0; i<100; i++) {
        [allBeers addBeer:[[Beer alloc] init]];
    }
    
    XCTAssertTrue([[allBeers valueForKey:@"count"] integerValue] == 100, @"");
}


- (void)testCanGetAllBeers{
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertTrue([allBeers allBeers].count ==0, @"");
    for (int i=0; i<100; i++) {
        Beer *beer = [[Beer alloc] init];
        [beer setValue:[NSString stringWithFormat:@"Beer %d",i] forKey:@"name"];
        [allBeers addBeer:beer];
    }
    XCTAssertTrue(allBeers.count == 100, @"");
    for (int i=0; i<100; i++) {
        Beer *beerTest = [[allBeers allBeers] objectAtIndex:i];
        NSString *s = [NSString stringWithFormat:@"Beer %d",i];
        XCTAssertEqualObjects(beerTest.name, s, @"");
    }
    int i = 0;
    for (Beer *beerToTest in [allBeers allBeers]) {
        NSString *s = [NSString stringWithFormat:@"Beer %d",i];
        XCTAssertEqualObjects(beerToTest.name, s, @"");
        i++;
    }
    
    [[allBeers allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        Beer *beerToTest = (Beer *)obj;
        NSLog(@"%@ %d", beerToTest.name, idx);
        *stop = idx > 50 ? YES : NO;
    }];
}

- (void)testCanGetAllBeersKVC{
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertTrue([allBeers allBeers].count ==0, @"");
    for (int i=0; i<100; i++) {
        Beer *beer = [[Beer alloc] init];
        [beer setName:[NSString stringWithFormat:@"Beer %d",i]];
        [allBeers addBeer:beer];
    }
    XCTAssertTrue([[allBeers valueForKey: @"count"] integerValue] == 100, @"");
    for (int i=0; i<100; i++) {
        Beer *beerTest = [[allBeers allBeers] objectAtIndex:i];
        NSString *s = [NSString stringWithFormat:@"Beer %d",i];
        XCTAssertEqualObjects([beerTest valueForKey:@"name"], s, @"");
    }
    int i = 0;
    for (Beer *beerToTest in [allBeers allBeers]) {
        NSString *s = [NSString stringWithFormat:@"Beer %d",i];
        XCTAssertEqualObjects([beerToTest valueForKey:@"name"], s, @"");
        i++;
    }
    
    [[allBeers allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        Beer *beerToTest = (Beer *)obj;
        NSLog(@"%@ %d", [beerToTest valueForKey:@"name"], idx);
        *stop = idx > 50 ? YES : NO;
    }];
}


- (void)testCantChangeCountOfBeers{
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertTrue(allBeers.count == 0, @"");
    [allBeers setCount:10];
    XCTAssertTrue(allBeers.count == 0, @"");
}

- (void)testCantChangeCountOfBeersKVC{
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertTrue([[allBeers valueForKey:@"count"] integerValue] == 0, @"");
    [allBeers setCount:10];
    XCTAssertTrue([[allBeers valueForKey:@"count"] integerValue] == 0, @"");
}



@end
