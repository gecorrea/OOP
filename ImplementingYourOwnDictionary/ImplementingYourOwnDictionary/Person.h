//  Person.h
//  ImplementingYourOwnDictionary

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSString *address;

+ (void) addPersonName:(NSString *) addName andPerson:(Person *) addPerson toDictionary:(NSMutableDictionary *) dictionary;

@end
