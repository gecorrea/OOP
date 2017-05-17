//  GettingFamiliarWithClassesAndObjects

/*      1. Create a class Car
        2. Add the following properties to Car
            • Company
            • Model
            • Year
        3. Create a class Person
        4. Add the following properties to Person
            • First name
            • Last name
            • City
        5. Create 2 objects of type Person
            • Jim Smith, New York
            • Mason King, LA
        6. Print the city for both people
        7. Add an additional property ‘currentOwner’ of type Person to the class Car
        8. Create 2 objects of type Car
            • Tesla, Model S, 2013
            • Nissan, Leaf, 2012
        9. Add Jim Smith as the owner of the Tesla
        10. Add Mason King as the owner of the Nissan
        11. Print Company, model, year and owner name for both cars
        12. Now ownership changes – A new guy John H comes in and owns the Nissan
            • Create a new Person object for John H
            • Add John H as the owner of the Nissan
        13. Another ownership change – new guy James M comes in and now owns the Tesla
            • Create a new Person object for James M
            • Add James M as the owner of the Tesla
        14. Print the first name, last name and city of the owners of both cars */

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *jimSmith = [[Person alloc] init];
        jimSmith.firstName = @"Jim";
        jimSmith.lastName = @"Smith";
        jimSmith.city = @"New York";
        
        Person *masonKing = [[Person alloc] init];
        masonKing.firstName = @"Mason";
        masonKing.lastName = @"King";
        masonKing.city = @"LA";
        
        NSLog(@"%@, %@", jimSmith.city, masonKing.city);
        
        Car *teslaCar = [[Car alloc] init];
        teslaCar.company = @"Tesla";
        teslaCar.model = @"Model S";
        teslaCar.year = 2013;
        
        Car *nissanCar = [[Car alloc] init];
        nissanCar.company = @"Nissan";
        nissanCar.model = @"Leaf";
        nissanCar.year = 2012;
        
        teslaCar.currentOwner = jimSmith;
        
        nissanCar.currentOwner = masonKing;
        
        NSLog(@"%@, %@, %d, %@ %@", teslaCar.company, teslaCar.model, teslaCar.year, teslaCar.currentOwner.firstName, teslaCar.currentOwner.lastName);
        NSLog(@"%@, %@, %d, %@ %@", nissanCar.company, nissanCar.model, nissanCar.year, nissanCar.currentOwner.firstName, nissanCar.currentOwner.lastName);
        
        Person *johnH = [[Person alloc] init];
        johnH.firstName = @"John";
        johnH.lastName = @"H.";
        johnH.city = @"Death Valley";
        nissanCar.currentOwner = johnH;
        
        Person *jamesM = [[Person alloc] init];
        jamesM.firstName = @"James";
        jamesM.lastName = @"M.";
        jamesM.city = @"City of Angels";
        teslaCar.currentOwner = jamesM;
        
        NSLog(@"%@ %@, %@", nissanCar.currentOwner.firstName, nissanCar.currentOwner.lastName, nissanCar.currentOwner.city);
        NSLog(@"%@ %@, %@", teslaCar.currentOwner.firstName, teslaCar.currentOwner.lastName, teslaCar.currentOwner.city);
        
    }
    return 0;
}
