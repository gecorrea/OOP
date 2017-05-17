//  ImplementingYourOwnDictionary
/*  1. Object oriented programming.
        • Write a program with a class for storing Names and Addresses.
        • Write a program that reads names and addresses from a file and creates a new instance of the above class for each new entry.
        • Identify duplicate names by using NSMutableDictionary with the above objects. Use names as keys and the objects above as values.
    2. Implement your own Dictionary class.
        • Define the interface first.
        • Implement the methods.
    3. Test your program above to use your implementation of the dictionary instead of NSMutableDictionary. */

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dictionary.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *path = @"/Users/Pantalones/dev/School/OOP/ImplementingYourOwnDictionary/ImplementingYourOwnDictionary/data.txt";
        NSString *dataString = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@", dataString);
        NSArray *newArray = [dataString componentsSeparatedByString:@"\n"];
        Dictionary *newDictionary = [[Dictionary alloc] initDictionary];
        
        for (NSString *row in newArray) {
            NSArray *personArray = [row componentsSeparatedByString:@", "];
            if([personArray count] > 1) {
            Person *newPerson = [[Person alloc] init];
            newPerson.name = personArray[0];
            newPerson.address = personArray[1];
            [newDictionary addPerson:newPerson forName:newPerson.name];
            }
        }
        
        Person *carltonBanks = [[Person alloc] init];
        carltonBanks.name = @"Carlton Banks";
        carltonBanks.address = @"123 It's Not Unusual Lane, Bel-Air, CA 21014";
        
        Person *willSmith = [[Person alloc] init];
        willSmith.name = @"Will Smith";
        willSmith.address = @"456 Miami Way, Miami, FL 33101";
        
        Person *jazzyJeff = [[Person alloc] init];
        jazzyJeff.name = @"DJ Jazzy Jeff";
        jazzyJeff.address = @"789 Summer Time Drive, West Philadelphia, PA 19104";
        
        NSMutableDictionary *addressBook = [[NSMutableDictionary alloc] initWithObjectsAndKeys:carltonBanks, carltonBanks.name, willSmith, willSmith.name, jazzyJeff, jazzyJeff.name, nil];
        
        for(NSString *person in addressBook) {
            Person *tempPerson = [addressBook objectForKey:person];
            NSLog(@"%@ lives at %@", tempPerson.name, tempPerson.address);
        }
        
        Person *hillaryBanks = [[Person alloc] init];
        hillaryBanks.name = @"Hillary Banks";
        hillaryBanks.address = @"101 Fancy Circle, Beverly Hills, CA 90209";
        
        [Person addPersonName:hillaryBanks.name andPerson:hillaryBanks toDictionary:addressBook];
        
        for(NSString *person in addressBook) {
            Person *tempPerson = [addressBook objectForKey:person];
            NSLog(@"%@ lives at %@", tempPerson.name, tempPerson.address);
        }
        
        [Person addPersonName:jazzyJeff.name andPerson:jazzyJeff toDictionary:addressBook];
        
        for(NSString *person in addressBook) {
            Person *tempPerson = [addressBook objectForKey:person];
            NSLog(@"%@ lives at %@", tempPerson.name, tempPerson.address);
        }
        
        Dictionary *newAddressBook = [[Dictionary alloc] initDictionary];
        
        [newAddressBook addPerson:carltonBanks forName:carltonBanks.name];
        [newAddressBook addPerson:willSmith forName:willSmith.name];
        [newAddressBook addPerson:carltonBanks forName:carltonBanks.name];
        [newAddressBook removePerson:carltonBanks forName:carltonBanks.name];
        [newAddressBook removePerson:hillaryBanks forName:hillaryBanks.name];
        [newAddressBook printDictionary];
        [newAddressBook addPerson:jazzyJeff forName:jazzyJeff.name];
        [newAddressBook printDictionary];
    }
    return 0;
}
