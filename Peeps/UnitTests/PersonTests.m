// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import <Peeps/Peeps.h>

@interface PersonTests : XCTestCase
@end

@implementation PersonTests

- (void)testCreateAndInitializePerson {
    Person *fred = [[Person alloc] init];
    [fred setFirstName:@"Fred"];
    [fred setLastName:@"Smith"];
    [fred setAge:42];
    
    NSLog(@"%@", fred);
}

- (void)testCustomInitializer {
    Person *fred = [[Person alloc] initWithFirstName:@"Fred"
                                            lastName:@"Smith"
                                                 age:42];
    NSLog(@"%@", fred);
}

- (void)testFactoryMethod {
    Person *fred = [Person personWithFirstName:@"Fred" lastName:@"Smith" age:42];
    NSLog(@"%@", fred);
}

- (void)testBarking {
    id fred = [Person personWithFirstName:@"Fred" lastName:@"Smith" age:42];
    Dog *rover = [[Dog alloc] init];
    [fred setDog:rover];
    
    if ([fred respondsToSelector:@selector(bark)]) {
        [fred bark];
    }
    
    [fred growl];
    
    NSLog(@"%@", fred);
}

@end
