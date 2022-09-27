// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <Foundation/Foundation.h>

struct Person {
    char *name;
    int age;
};
typedef struct Person Person;

Person fred;
int Foo = 42;

void MovePointerThroughArray(const char *s, int length) {
    for (; *s; s++) {
        printf("%s\n", s);
    }
}

static void Capitalize(char *word) {
    const char delta = 'a' - 'A';
    word[0] -= delta;
}

char *CreateCapitalizedWord(const char *word)
{
    if (!word) return NULL;
    
    // Compute size. Add 1 for '\0' delimiter.
    size_t size = strlen(word) + 1;
    // Allocate storage and store address in local variable.
    char *newWord = malloc(size);
    // Copy contents of word to newWord (including '\0' terminator).
    strcpy(newWord, word);
    // Capitalize newWord.
    Capitalize(newWord);
    // Return the address of the capitalized word.
    return newWord;
}

void MessWithPointersAndArrays(void) {
    char foo[100]; // Uninitialized array -- use with caution!
    char fred[] = "Fred Smith";
    char *charRef = fred;
    
    printf("Value of foo is %s\n", foo);
    for (int i = 0; i < 100; i++) {
        printf("%c", foo[i]);
    }
    putchar('\n');
    
    printf("Size of fred is %ld\n", sizeof(fred));
    printf("Size of charRef is %ld\n", sizeof(charRef));
    
    printf("%s\n", charRef);
    charRef = "Woo!";
    printf("%s\n", charRef);
    
    printf("Address of fred is %p\n", fred);
    printf("Value of charRef is %p\n", charRef);
    printf("Address of charRef is %p\n", &charRef);
    printf("Address of \'Fred Smith\' is %p\n", "Woo!");

//    charRef[0] = 'H'; // Crashes here because address points to string literal
    
    charRef = fred;
    *charRef = 'T';
    
    *(charRef + 1) = 'h';
    charRef[3] = 'o';
    printf("Value of charRef is %s\n", charRef);
    printf("Value of fred is %s\n", fred);

//    printf("%s\n", fred);
//    fred = "Yay!";  // Illegal!
    
    MovePointerThroughArray(fred, sizeof(fred));
    
    char bar[] = { 97, 98, 99, 0 };
    printf("Value of foo is %s\n", bar);
    
    char *capitalizedWord = CreateCapitalizedWord("hello");
    printf("Capitalized word is %s\n", capitalizedWord);
}
