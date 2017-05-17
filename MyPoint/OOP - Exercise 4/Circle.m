//  Circle.m
//  OOP
//  Exercise 19: Define two classes called ‘Square’ and ‘Circle’. Which class should they extend? Declare the appropriate initializers.

#import "Circle.h"

@implementation Circle

@synthesize color, name;

- (NSString *) getShapeType {
    return @"circle";
}

- (id) initWithPoint1:(MyPoint *) point1 andPoint2:(MyPoint *) point2 {
    self = [super init];
    if (self) {
        self.midPoint = point1;
        self.edgePoint = point2;
    }
    return self;
}

- (double) calculateArea {
    self.radius = [Utilities getDistance:self.midPoint and:self.edgePoint];
    self.area = M_PI * pow(self.radius, 2);
    return self.area;
}

- (void) printArea {
    NSLog(@"%f", self.area);
}

- (void) getCoordinates {
    NSLog(@"(%f, %f) and (%f, %f)", self.midPoint.getX, self.midPoint.getY, self.edgePoint.getX, self.edgePoint.getY);
}
@end
