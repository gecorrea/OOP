//  Rectangle.h
//  OOP
/*  Exercise 18: Next, define a class called ‘Rectangle’ that inherits from Shape. Override the getShapeType method to return “rectangle”. And
 create an initializer for it. The initializer should accept 4 arguments of type MyPoint to represent each corner. */

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "MyPoint.h"
#import "Utilities.h"
#import "Quadrilateral.h"

@interface Rectangle : NSObject <Shape, Quadrilateral> 

// Exercise 21: Read about Objective-C properties and implement properties for the points in your Rectangle and Square classes above.
@property MyPoint *bottomLeft, *bottomRight, *topLeft, *topRight;
@property double bottom;
@property double right;
@property double left;
@property double top;
@property double area;

- (id) initWithPoint1:(MyPoint *) point1 andPoint2:(MyPoint *) point2 andPoint3:(MyPoint *) point3 andPoint4:(MyPoint *) point4;


@end
