// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Person.h"

@implementation Person {
    NSMutableArray *_dogs;
}
//@synthesize dogs = _dogs;


// Convenience initializer
- (instancetype)initWithFirstName:(NSString *)aFirstName
                         lastName:(NSString *)aLastName {

    return [self initWithFirstName:aFirstName lastName:aLastName age:0];
}

// Designated initializer
- (instancetype)initWithFirstName:(NSString *)aFirstName
                         lastName:(NSString *)aLastName
                              age:(NSInteger)anAge {
    self = [super init];
    if (self == nil) return nil;
    
    // Initialize ivars.
    _firstName = [aFirstName copy];
    _lastName = [aLastName copy];
    _age = anAge;
    
    // Call methods on self, if necessary.
    
    return self;
}

// Class factory method.
+ (instancetype)personWithFirstName:(NSString *)aFirstName
                           lastName:(NSString *)aLastName
                                age:(NSInteger)anAge {
    
    return [[self alloc] initWithFirstName:aFirstName lastName:aLastName age:anAge];
}

- (BOOL)respondsToSelector:(SEL)aSelector {
    if ([super respondsToSelector:aSelector]) {
        return YES;
    }
    
    return [self.dog respondsToSelector:aSelector];
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([self.dog respondsToSelector:aSelector]) {
        return self.dog;
    }
    
    return nil;
}

- (NSString *)fullName {
    return [[NSString alloc] initWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@, age: %@", self.fullName, @(self.age)];
}

- (NSArray *)dogs {
    if (_dogs == nil) {
        _dogs = [NSMutableArray array];
    }
    return _dogs;
}

@end
