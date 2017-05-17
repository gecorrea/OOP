//  OOP - Exercise 2
//  Write a program to represent a rectangle by using the MyCPoint struct above. Write a function that prints its area.

#include <stdio.h>

typedef struct{
    int x, y;
} MyCPoint;

int areaOfRectangle(MyCPoint a, MyCPoint b, MyCPoint c, MyCPoint d)
{
    return (d.x - a.x) * (c.y - b.y);
}

int main(int argc, const char * argv[]) {
    
    MyCPoint point1;
    point1.x = 1;
    point1.y = 1;
    
    MyCPoint point2;
    point2.x = 9;
    point2.y = 1;
    
    MyCPoint point3;
    point3.x = 1;
    point3.y = 5;
    
    MyCPoint point4;
    point4.x = 9;
    point4.y = 5;
    
    int MyCPointArea = areaOfRectangle(point1, point2, point3, point4);
    
    printf("The area of the rectangle is %d.\n", MyCPointArea);
    
    return 0;
}
