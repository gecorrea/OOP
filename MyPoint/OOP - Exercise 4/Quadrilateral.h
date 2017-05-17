//  Quadrilateral.h
//  OOP
/*  Exercise 22: Demonstrate polymorphism by assigning objects of type Rectangle and Square to a variable of type id but defined to be of type
 ‘Quadrilateral’ (the protocol) */

#import <Foundation/Foundation.h>

@protocol Quadrilateral <NSObject>

- (double) calculateArea;
- (void) printArea;

@end
