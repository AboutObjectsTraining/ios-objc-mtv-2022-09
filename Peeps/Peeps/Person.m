// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Person.h"

@implementation Person

- (NSString *)firstName {
    return _firstName;
}
- (void)setFirstName:(NSString *)newValue {
    // FIXME: Do something with newValue...
    _firstName = newValue;
}

- (NSString *)lastName {
    return _lastName;
}
- (void)setLastName:(NSString *)newValue {
    _lastName = newValue;
}

- (NSString *)fullName {
    return [[NSString alloc] initWithFormat:@"%@ %@", [self firstName], [self lastName]];
}

- (NSInteger)age {
    return _age;
}
- (void)setAge:(NSInteger)newValue {
    _age = newValue;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@, age: %@",
            [self fullName],
            @([self age])];
}

@end
