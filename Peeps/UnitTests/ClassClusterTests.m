// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

@interface ClassClusterTests : XCTestCase
@end

@implementation ClassClusterTests

- (void)testStringClassClusters {
    NSString *s1 = [NSString alloc];
    NSString *s2 = [[NSString alloc] initWithFormat:@"%@ %@", @"Hello", @"World"];
    NSMutableString *s3 = [[NSMutableString alloc] initWithString:s2];
    
//    [(NSMutableString *)s2 appendString:@"! Yay!"];
    [s3 appendString:@"! Woohoo!"];
    
    s1 = [s1 initWithString:@"Hello!"];
    
    NSLog(@"%@\n%@\n%@", s1, s2, s3);
}

- (void)testArrayClassClusters {
    NSArray *a1 = [NSArray alloc];
    NSMutableArray *a2 = [[NSMutableArray alloc] init];
    
    a1 = [a1 initWithArray:@[@1, @2]];
    
    NSLog(@"%@\n%@", a1, a2);
}

@end
