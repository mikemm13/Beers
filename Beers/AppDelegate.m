//
//  AppDelegate.m
//  Beers
//
//  Created by Miguel Martin Nieto on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "AppDelegate.h"
#import "Beer.h"
#import "Person.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    // Override point for customization after application launch.
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
    
    Beer *mahou = [[Beer alloc] init];
    Beer *cruzcampo = [Beer new];
    Beer *estrellaDamm = [[Beer alloc] init];
    Beer *coronita = [[Beer alloc] init];
    
    [mahou setName:@"Mahou"];
    [mahou setColor:@"Rubia"];
    [mahou setGrade:4];
    
    [cruzcampo setName:@"Cruzcampo"];
    [cruzcampo setColor:@"Rubia"];
    [cruzcampo setGrade:4];
    
    [estrellaDamm setName:@"Estrella Damm"];
    [estrellaDamm setColor:@"Rubia"];
    [estrellaDamm setGrade:4];
    
    [coronita setName:@"Coronita"];
    [coronita setColor:@"Rubia"];
    [coronita setGrade:4];
    
    mahou.name = @"pepita";
    
    [mahou printBeerInfo];
    [mahou printBeerInfoWithHeader:@"Header"];
    [mahou printBeerInfoWithHeader:@"Header" andFooter:@"Footer"];
    [mahou printBeerInfoWithHeader:@"Header" andFooter:@"Footer" andNumberOfEmojis:5];
    
    [coronita printBeerInfo];
    [cruzcampo printBeerInfo];
    [estrellaDamm printBeerInfo];
    
    Person *diego = [[Person alloc] init];
    diego.name = @"Diego";
    [diego setName:@"Diego"];
    diego.age = 25;
    [diego setAge:25];
    diego.address = @"C/Alameda";
    
    Person *groucho = [[Person alloc] init];
    Person *harpo = [[Person alloc] initWithName:@"Harpo"];
    Person *chicco = [[Person alloc] initWithName:@"Chicco" andAddress:@"Alameda 22"];
    Person *zeppo = [[Person alloc] initWithName:@"Zeppo" andAddress:@"Alameda 22" andAge:40];
    
    NSLog(@"Name: %@, Address: %@, Age: %d", groucho.name, groucho.address, groucho.age);
    NSLog(@"Name: %@, Address: %@, Age: %d", harpo.name, harpo.address, harpo.age);
    NSLog(@"Name: %@, Address: %@, Age: %d", chicco.name, chicco.address, chicco.age);
    NSLog(@"Name: %@, Address: %@, Age: %d", zeppo.name, zeppo.address, zeppo.age);
    
    
    NSArray *personList = [NSArray arrayWithObjects:groucho, harpo, nil];
    NSArray *personList2 = [NSArray arrayWithObjects:chicco, diego, zeppo, nil];
    NSArray *personList3 = @[diego,groucho,harpo];
    for (Person *person in personList2) {
        NSLog(@"%@", person.name);
    }
    
    Person *p = [Person personWithName:@"new person"];
    NSMutableArray *partyList = [NSMutableArray arrayWithArray:@[diego, groucho]];
    for (int i = 0; i < 100; i++) {
        NSString *s = [NSString stringWithFormat:@"Persona %d", 1];
        Person *person = [Person personWithName:s];
        [partyList addObject:person];
    }
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
