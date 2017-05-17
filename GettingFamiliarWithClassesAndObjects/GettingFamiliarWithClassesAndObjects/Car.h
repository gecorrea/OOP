//  Car.h
//  GettingFamiliarWithClassesAndObjects

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Car : NSObject

@property NSString *company;
@property NSString *model;
@property int year;
@property Person *currentOwner;

@end
