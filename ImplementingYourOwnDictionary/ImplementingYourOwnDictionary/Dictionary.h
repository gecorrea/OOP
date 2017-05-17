//  ImplementingYourOwnDictionary

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Dictionary : NSObject

@property NSMutableArray *keyArray;
@property NSMutableArray *valueArray;

- (id) initDictionary;
- (void) addPerson:(Person *) person forName:(NSString *) name;
- (void) removePerson:(Person *) person forName:(NSString *) name;
- (void) printDictionary;

@end
