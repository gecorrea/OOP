//  Shape.h
//  OOP - Exercise 4
//  Exercise 20: Convert the Shape class above to a protocol and now define Rectangle ,Square and Circle with the same functionality as above.

#import <Foundation/Foundation.h>

@protocol Shape <NSObject>

@property NSString *name;
@property NSString *color;


- (NSString *) getShapeType;

- (void) printArea;
- (void) getCoordinates;

@optional
- (double) calculateArea;


@end
