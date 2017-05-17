//  Square.m
//  OOP
//  Exercise 19: Define two classes called ‘Square’ and ‘Circle’. Which class should they extend? Declare the appropriate initializers.

#import "Square.h"

@implementation Square

- (NSString *) getShapeType {
    return @"square";
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
    
    if(self.left == self.right && self.left == self.bottom && self.left == self.top)
        return self;
    else
        return nil;
}

- (double) calculateArea {
    self.left = [Utilities getDistance:self.bottomLeft and:self.topLeft];
        self.area = self.left * self.left;
    return self.area;
}

@end
