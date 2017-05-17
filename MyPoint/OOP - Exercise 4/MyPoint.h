//  OOP - Exercise 4
//  Declare the above MyPoint class in Objective-C. Add the two functions above. What is the role of the header file?
//  The header file contains the declarations of instance variables and methods.

#import <Foundation/Foundation.h>
#import "AbstractPoint.h" // Exercise 14: Modify your original MyPoint class to adopt this protocol above.

@interface MyPoint : NSObject <AbstractPoint> {
    
    @public
    double  x, y;
}

// moveAlong methods are defined in AbstractPoint.h
//- (void)moveAlongX:(double)shiftX;
//- (void)moveAlongY:(double)shiftY;
- (double)getX;
- (double)getY; // Exercise 8: Add a getY function also.
- (id)init;
/* Exercise 11: Implement a second initializer to your MyPoint class and designate one of those as a ‘designated initializer’. Demonstrate the usefulness of the designated initializer idea in your code. How does the compiler help when you have a designated initializer? */
- (instancetype)initWithX:(double) xValue andY:(double)yValue NS_DESIGNATED_INITIALIZER;
/* The compiler helps when you have a designated initializer because a particular initializer is considered designated, and other initializers on the class must call through to it. */

@end

