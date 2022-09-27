// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *_firstName;
    NSString *_lastName;
    NSInteger _age;
}

- (NSString *)firstName;
- (void)setFirstName:(NSString *)newValue;

- (NSString *)lastName;
- (void)setLastName:(NSString *)newValue;

- (NSInteger)age;
- (void)setAge:(NSInteger)newValue;



@end



// C struct example for comparison
struct C_Person {
    const char *firstName;
    const char *lastName;
    int age;
};
