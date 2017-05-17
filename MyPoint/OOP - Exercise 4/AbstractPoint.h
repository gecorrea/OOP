//  AbstractPoint.h
//  OOP
/*  Exercise 12: In Objective-C, define a protocol called ‘AbstractPoint’ and give it the behaviors you would want from a point i.e move
 along X, move along Y, distance from origin and distance of this point from another point. */

#import <Foundation/Foundation.h>
@class MyPoint;

@protocol AbstractPoint <NSObject>

- (void)moveAlongX:(double)shiftX;
- (void)moveAlongY:(double)shiftY;
// Exercise 13: Mark one of these functions as @optional. What does that mean?
@optional
- (double)distanceFromOrigin: (MyPoint*)point;
- (double)getDistanceFromPoint: (MyPoint*) point;
// @optional are methods that a class can implement only if it needs to.
@end
