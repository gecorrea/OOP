//  OOP - Exercise 3
//  Declare the above class in Objective-C using commonly used Objective-C classes such as NSString and NSArray. How do you add operations?

#import <Foundation/Foundation.h>

@interface Bird : NSObject{
    
    @public
    NSString *name;
    NSArray *birdPowerList;
    double birdMass;
}

@end

//  You can add operations by making functions.
