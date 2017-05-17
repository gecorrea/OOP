
#import <Foundation/Foundation.h>
#import "Bird.h"
#import "MyPoint.h"
#import "Utilities.h"
#import "Shape.h"
#import "Rectangle.h"
#import "Square.h"
#import "Circle.h"
#import "Quadrilateral.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Exercise 5: Declare two variables p1 and p2 to represent two points inside your main function.
        MyPoint *p1 = [[MyPoint alloc] init]; //Exercise 6: Allocate memory for the variables p1 and p2 defined in the previous exercise.
        MyPoint *p2 = [[MyPoint alloc] init];
        
        p1 -> x = 25; // Exercise 9: In main, change values of x and y as shown above after initialization.
        p1 -> y = 35;
        
        //  Exercise 7: In the XCode debugger, check the values of x and y in your class for p1 and p2 above.
        // Instance variables x and y are both 0 for *p1 and *p2.
        
        // Exercise 8: In your main function, instantiate p1 and p2 and call all three functions with different arguments on both objects.
        // Add a getY function also.
        [p1 moveAlongX:5];
        [p1 moveAlongY:3];
        double x1_val = [p1 getX];
        
        [p2 moveAlongX:10];
        [p2 moveAlongY:18];
        double x2_val = [p2 getX];
        NSLog(@"x1 value is %f and x2 value is %f.", x1_val, x2_val);
        
        double distance = [Utilities getDistance:p1 and:p2];
        NSLog(@"%f", distance);
        // Exercise 15: What does ‘respondsToSelector’ in Objective-C do? Demonstrate it in your code.
        // respondsToSelector checks to see if a variable responds to a method.
        NSLog(@"Responds to selector? %i", [p1 respondsToSelector:@selector(getDistanceFromPoint:)]);
        
        /* Exercise 16: Write a simple program to demonstrate the use of each of the following classes (NSString, NSArray, NSMutableArray,
         NSDictionary, NSMutableDictionary). */
        
        NSString *name = @"George";
        NSArray *setOfPoints = @[p1, p2];
        NSMutableArray *theSameSetOfPoints = [NSMutableArray array];
        
        [theSameSetOfPoints addObject:p2];
        [theSameSetOfPoints addObject:p1];
        
        NSDictionary *shapes2Dto3D = @{ @"Sphere" : @"Circle", @"Cylinder" : @"Triangle", @"Cube" : @"Square"};
        
        NSMutableDictionary *moreShapes = [[NSMutableDictionary alloc] initWithDictionary:shapes2Dto3D];
        
        [moreShapes setObject:@"Ellipses" forKey:@"Egg"];
        
        Rectangle *rect = [[Rectangle alloc] initWithPoint1:p1 andPoint2:p2 andPoint3:p1 andPoint4:p2];
        
//        NSLog(@"%@", rect);
        
        MyPoint *rectanglePoint1 = [[MyPoint alloc] initWithX:10 andY:10];
        MyPoint *rectanglePoint2 = [[MyPoint alloc] initWithX:30 andY:10];
        MyPoint *rectanglePoint3 = [[MyPoint alloc] initWithX:10 andY:20];
        MyPoint *rectanglePoint4 = [[MyPoint alloc] initWithX:30 andY:20];
        
        MyPoint *squarePoint1 = [[MyPoint alloc] initWithX:10 andY:10];
        MyPoint *squarePoint2 = [[MyPoint alloc] initWithX:20 andY:10];
        MyPoint *squarePoint3 = [[MyPoint alloc] initWithX:10 andY:20];
        MyPoint *squarePoint4 = [[MyPoint alloc] initWithX:20 andY:20];
        
        /* Exercise 22: Demonstrate polymorphism by assigning objects of type Rectangle and Square to a variable of type id but defined to be of
         type ‘Quadrilateral’ (the protocol). */
        
        id<Quadrilateral> newRect = [[Rectangle alloc] initWithPoint1:rectanglePoint1 andPoint2:rectanglePoint2 andPoint3:rectanglePoint3 andPoint4:rectanglePoint4];
        [newRect calculateArea];
        [newRect printArea];
        
        id<Quadrilateral> newSqr = [[Rectangle alloc] initWithPoint1:squarePoint1 andPoint2:squarePoint2 andPoint3:squarePoint3 andPoint4:squarePoint4];
        [newSqr calculateArea];
        [newSqr printArea];
        
        newRect = [[Square alloc] initWithPoint1:rectanglePoint1 andPoint2:rectanglePoint2 andPoint3:rectanglePoint3 andPoint4:rectanglePoint4];
        [newRect calculateArea];
        [newRect printArea];
        
        newSqr = [[Square alloc] initWithPoint1:squarePoint1 andPoint2:squarePoint2 andPoint3:squarePoint3 andPoint4:squarePoint4];
        [newSqr calculateArea];
        [newSqr printArea];
        
        Rectangle *rectangle = [[Rectangle alloc] initWithPoint1:rectanglePoint1 andPoint2:rectanglePoint2 andPoint3:rectanglePoint3 andPoint4:rectanglePoint4];
        
        Square *square = [[Square alloc] initWithPoint1:squarePoint1 andPoint2:squarePoint2 andPoint3:squarePoint3 andPoint4:squarePoint4];
        
        Rectangle *rectangle2 = square;
        /* Exercise 23: Create two objects – one of type Square and the other Rectangle. Assign both to a variable of type Rectangle. Why does
         this work? We are able to do this because Square is a subclass of the Rectangle class. */
        
        NSLog(@"%@", [rectangle getShapeType]);
        NSLog(@"%@", [rectangle2 getShapeType]);
        /* Exercise 24: On these two objects of type Rectangle in the above exercise, call the function getShapeType. Why does it not print
         ‘Rectangle’ in both cases since that’s the type of the variable? While both are from the Rectangle class, rectangle2 was set from a
         square object and therefore, it knows that because it is a square.*/
        
        Circle *circle = [[Circle alloc] initWithPoint1:rectanglePoint1 andPoint2:rectanglePoint2];
        
        [Utilities getShapeInfo:circle];
        [Utilities getShapeInfo:rectangle];
        [Utilities getShapeInfo:square];
        
        /* Exercise 26: If you did not want to use a Utility class for printing and passing objects as arguments, how could you have achieved
         this print functionality? Hint: Use @optional in the Shape protocol to get the area. */
        
        // You could call each functions from the Shapes protocol.
        if([circle respondsToSelector:@selector(calculateArea)] == 1)
        {
            NSLog(@"%@", [circle getShapeType]);
            [circle printArea];
            [circle getCoordinates];
        }
        
        // Exercise 27: For the print example above, how does the object-oriented way of doing things avoid excessive use of if-else in code?
        
        // You would have to use if-else statments to check what kind of shape you are dealing with before printing the required functions.
    }
    return 0;
}
