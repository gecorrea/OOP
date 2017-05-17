//  MoreOnArraysAndDictionaries
/*  1. Create an array of 3 companies – Apple, Google and Microsoft
    2. Print each company name above using a loop
    3. Add a fourth company Facebook to the above array
    4. Print the 3rd company in the above array
    5. Print the size of the array
    6. Create an object of type NSMutableDictionary with the following key-value pairs
        • Key=AAPL, value = Apple
        • Key=GOOG, value = Google
        • Key=MSFT, value = Microsoft
    7. Print all elements of the dictionary above
    8. Print the value for key = MSFT
    9. Add another key,value pair {Key=FB, value = Facebook}
    10. Remove the element with key=AAPL from the dictionary
    11. Print the number of elements in the dictionary
    12. Create a new class called Company.
    13. Add these properties to company
        • stockPrice
        • companyName
        • companyLogoName
    14. Create an instance of Company and set the above values to 1000, Google, google.png
    15. Print the value of these three attributes
    16. Add another property of type NSMutableArray to Company
    17. Add the following products to the above array in the Company class –AdWords, AdSense,GoogleDocs
    18. Print the above values for the three products
    19. Remove GoogleDocs from the array above
    20. Print names for the remaining products
    21. Create a Product class with the following properties
        • productName
        • productLogo
        • productURL
    22. Create two instances of the Product class above
    23. Set values for productName, logo and url in the two objects above
    24. Add these two products objects to the array property in Company class
    25. Print the details of all products in the company class */

#import <Foundation/Foundation.h>
#import "Company.h"
#import "Product.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *companies = [[NSArray alloc] initWithObjects:@"Apple", @"Google", @"Microsoft", nil];
        
        for(NSString *company in companies)
            NSLog(@"%@", company);
        
        NSMutableArray *mutableCompanies = [[NSMutableArray alloc] initWithArray:companies];
        
        [mutableCompanies addObject:@"FaceBook"];
        
        NSLog(@"%@", mutableCompanies[2]);
        
        NSLog(@"%lu", [mutableCompanies count]);
        
        NSMutableDictionary *companyDictionary = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                                  mutableCompanies[0], @"AAPL", mutableCompanies[1], @"GOOG", mutableCompanies[2], @"MSFT", nil];
        
        for(NSString *key in [companyDictionary allKeys])
            NSLog(@"%@", [companyDictionary objectForKey:key]);
        
        NSLog(@"%@", [companyDictionary objectForKey:@"MSFT"]);
        
        [companyDictionary setObject:mutableCompanies[3] forKey:@"FB"];
        
        [companyDictionary removeObjectForKey:@"AAPL"];
        
        NSLog(@"%lu", [companyDictionary count]);
        
        Company *google = [[Company alloc] init];
        google.stockPrice = 1000;
        google.companyName = @"Google";
        google.companyLogoName = @"google.png";
        
        NSLog(@"%f, %@, %@", google.stockPrice, google.companyName, google.companyLogoName);
        
        google.products = [[NSMutableArray alloc] initWithObjects:@"AdWords", @"AdSense", @"GoogleDocs", nil];
        
        for(NSString *product in google.products)
            NSLog(@"%@", product);
        
        [google.products removeObject:@"GoogleDocs"];
        
        for(NSString *product in google.products)
            NSLog(@"%@", product);
        
        Product *appleTV = [[Product alloc] init];
        appleTV.productName = @"appleTV";
        appleTV.productLogo = @"appletv.png";
        appleTV.productURL = @"http://www.apple.com/appletv";
        
        Product *iPhone = [[Product alloc] init];
        iPhone.productName = @"iPhone";
        iPhone.productLogo = @"iphone.png";
        iPhone.productURL = @"http://www.apple.com/iPhone";
        
        Company *apple = [[Company alloc] init];
        apple.products = [[NSMutableArray alloc] initWithObjects:appleTV, iPhone, nil];
        for(Product *product in apple.products)
            NSLog(@"%@, %@, %@", product.productName, product.productLogo, product.productURL);
    }
    return 0;
}
