//  ImplementingYourOwnDictionary

#import "Dictionary.h"

@implementation Dictionary

- (id) initDictionary {
    self = [super init];
    if(self) {
        self.keyArray = [[NSMutableArray alloc] init];
        self.valueArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addPerson:(Person *) person forName:(NSString *) name {
    if([self.keyArray containsObject:name])
        NSLog(@"%@ is already in the dictionary.", name);
    else {
        [self.keyArray addObject:name];
        [self.valueArray addObject:person];
        NSLog(@"%@ has been added to the dictionary.", name);
    }
    
}

- (void) removePerson:(Person *)person forName:(NSString *)name {
    if([self.keyArray containsObject:name]) {
        [self.keyArray removeObject:name];
        [self.valueArray removeObject:person];
        NSLog(@"%@ has been removed from the dictionary.", name);
    }
    else
        NSLog(@"%@ is not in the dictionary.", name);
}

- (void) printDictionary {
    for(int i=0; i<[self.valueArray count]; i++) {
        Person *tempPerson = self.valueArray[i];
        NSLog(@"%@ live at %@.", tempPerson.name, tempPerson.address);
    }
}

@end
