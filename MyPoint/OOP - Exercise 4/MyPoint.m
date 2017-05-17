//  OOP - Exercise 4

#import "MyPoint.h"

@implementation MyPoint

// Exercise 9: Implement the above initializer in your MyPoint class.
- (instancetype)initWithX:(double) xValue andY:(double)yValue {
    if (self = [super init]){
        self->x = xValue;
        self->y = yValue;
    }
    return self;
}

/* Exercise 11: Implement a second initializer to your MyPoint class and designate one of those as a ‘designated initializer’. Demonstrate the usefulness of the designated initializer idea in your code. How does the compiler help when you have a designated initializer? */
- (id)init {
    return [self initWithX:0 andY:0];
}

- (void)moveAlongX:(double)shiftX {
    x = x + shiftX;
}

- (void)moveAlongY:(double)shiftY {
    y = y + shiftY;
}

- (double)getX {
    return x;
}
// Exercise 8: Add a getY function also.
- (double)getY {
    return y;
}

- (double)distanceFromOrigin:(MyPoint *)point {
    return sqrt(pow(point->x, 2) + pow(point->y, 2));
}

- (double)getDistanceFromPoint:(MyPoint *)point {
    return sqrt(pow(10 - point->x, 2) + pow(20 - point->y, 2));
}

@end
