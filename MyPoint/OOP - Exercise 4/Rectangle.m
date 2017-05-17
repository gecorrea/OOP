//  Rectangle.m
//  OOP
/*  Exercise 18: Next, define a class called ‘Rectangle’ that inherits from Shape. Override the getShapeType method to return “rectangle”. And
 create an initializer for it. The initializer should accept 4 arguments of type MyPoint to represent each corner. */

#import "Rectangle.h"

@implementation Rectangle

@synthesize color, name;

- (NSString *) getShapeType {
    return @"rectangle";
}


- (id) initWithPoint1:(MyPoint *) point1 andPoint2:(MyPoint *) point2 andPoint3:(MyPoint *) point3 andPoint4:(MyPoint *) point4 {
    self = [super init];
    if (self) {
        self.bottomLeft = point1;
        self.bottomRight = point2;
        self.topLeft = point3;
        self.topRight = point4;
    }
    
    self.left = [Utilities getDistance:self.bottomLeft and:self.topLeft];
    self.bottom = [Utilities getDistance:self.bottomLeft and:self.bottomRight];
    self.right = [Utilities getDistance:self.bottomRight and:self.topRight];
    self.top = [Utilities getDistance:self.topLeft and:self.topRight];
    
    if(self.left == self.right && self.bottom == self.top)
        return self;
    else
        return nil;
}

- (double) calculateArea {
    self.left = [Utilities getDistance:self.bottomLeft and:self.topLeft];
    self.bottom = [Utilities getDistance:self.bottomLeft and:self.bottomRight];
        self.area = self.left * self.bottom;
    return self.area;
}

- (void) printArea {
    NSLog(@"%f", self.area);
}

- (void) getCoordinates {
    NSLog(@"(%f, %f), (%f, %f), (%f, %f) and (%f, %f)", self.bottomLeft.getX, self.bottomLeft.getY, self.bottomRight.getX, self.bottomRight.getY, self.topLeft.getX, self.topLeft.getY, self.topRight.getX, self.topRight.getY);
}

@end
