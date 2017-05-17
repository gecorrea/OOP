//  OOP - Exercise 10
//  Implement a class called Utilities and implement a function in that which returns the distance between two points.

#import "Utilities.h"

@implementation Utilities

+ (double)getDistance:(MyPoint*)point1 and:(MyPoint*)point2 {

    return sqrt(pow((point2->x - point1->x), 2) + pow((point2->y - point1->y), 2));
}

+ (void)getShapeInfo:(id<Shape>)shape {
    NSLog(@"%@",[shape getShapeType]);
    [shape calculateArea];
    [shape printArea];
    [shape getCoordinates];
    
    
    
}

@end
