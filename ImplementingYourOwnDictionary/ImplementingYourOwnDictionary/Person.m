//  Person.m
//  ImplementingYourOwnDictionary

#import "Person.h"

@implementation Person

+ (void) addPersonName:(NSString *) addName andPerson:(Person *) addPerson toDictionary:(NSMutableDictionary *) dictionary {
    if([dictionary objectForKey:addName] != nil)
        NSLog(@"Sorry! This person already exist.");
    else {
        [dictionary setObject:addPerson forKey:addName];
        NSLog(@"Your entry has been added to the dictionary!");
    }
}

@end
