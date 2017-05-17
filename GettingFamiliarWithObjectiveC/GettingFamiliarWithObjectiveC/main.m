//  GettingFamiliarWithObjectiveC

/*  1. Write a program that prints your name. Hint: Using NSString and NSLog.
    2. Write a program that divides two numbers by using the NSNumber class.
    3. Write a program to convert the string @”3.14159” to a double.
    4. Create an array of NSStrings with names of 10 countries and print each element.
    5. Create a string that is a concatenation of all the countries in the above array. Hint: Use NSArray and the method componentsJoinedByString. */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = @"George";
        NSLog(@"%@", name);
        
        NSNumber *firstNumber = [NSNumber numberWithInt:8];
        NSNumber *secondNumber = [NSNumber numberWithInt:2];
        int divideNumbers = [firstNumber intValue]/[secondNumber intValue];
        NSNumber *thirdNumber = [NSNumber numberWithInt:divideNumbers];
        NSLog(@"%@", thirdNumber);
        
        NSString *pi = @"3.14159";
        double numericValue = [pi doubleValue];
        NSLog(@"%f", numericValue);
        
        NSArray *countriesArray = @[@"GREECE", @"RUSSIA", @"ALBANIA", @"ANDORRA", @"HUNGARY", @"ROMANIA", @"AUSTRIA", @"ICELAND", @"ITALY", @"BELGIUM"];
        for(NSString *country in countriesArray)
            NSLog(@"%@", country);
        
        NSLog(@"%@",[countriesArray componentsJoinedByString:@""]);
    }
    return 0;
}
