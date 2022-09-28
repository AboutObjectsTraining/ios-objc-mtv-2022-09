// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Dog.h"

@implementation Dog

- (void)bark {
    printf("Woof! Woof!\n");
}

- (void)growl {
    printf("Grrrr!\n");
}

- (id)copyWithZone:(NSZone *)zone {
    Dog *newDog = [[Dog alloc] init];
    // Copy any ivars that need to be copied here.
    return newDog;
}

@end
