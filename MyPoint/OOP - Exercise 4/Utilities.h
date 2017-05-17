//  OOP - Exercise 10
//  Implement a class called Utilities and implement a function in that which returns the distance between two points.

#import <Foundation/Foundation.h>
#import <math.h>
#import "MyPoint.h"
#import "Shape.h"

@interface Utilities : NSObject

+ (double)getDistance:(MyPoint*)point1 and:(MyPoint*)point2;

/* Exercise 25: In the Utility class you created earlier, add a function that accepts a Shape and prints detailed information (coordinates and
 shapeType) about that shape. You should print the area if it is a circle, square or rectangle. In all other cases, you can skip the area. */

+ (void)getShapeInfo: (id<Shape>) shape;

@end
