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

@end
