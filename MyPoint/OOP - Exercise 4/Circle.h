//  Circle.h
//  OOP
//  Exercise 19: Define two classes called ‘Square’ and ‘Circle’. Which class should they extend? Declare the appropriate initializers.
//  Circle is a subclass of Shape.

#import <Foundation/Foundation.h>
#import <math.h>
#import "Shape.h"
#import "MyPoint.h"
#import "Utilities.h"

@interface Circle : NSObject <Shape>

@property MyPoint *midPoint;
@property MyPoint *edgePoint;
@property double radius;
@property double area;


- (id) initWithPoint1:(MyPoint *) point1 andPoint2:(MyPoint *) point2;

@end
