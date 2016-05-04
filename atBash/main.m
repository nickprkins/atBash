//
//  main.m
//  atBash
//
//  Created by Nick Perkins on 5/4/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSString *testString = @"draziw*";
//        
//        NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[testString length]];
//        int otheri = 0;
//        for (int i = 0; i < [testString length]; i++) {
//            NSString *ichar  = [NSString stringWithFormat:@"%c", [testString characterAtIndex:i]];
//            //[characters addObject:ichar];
//            if (i == 0){
//                [characters insertObject: ichar atIndex:i];
//            }else{
//                [characters insertObject:ichar atIndex:0];
//            }
//        }
//        NSString *str = [characters componentsJoinedByString:@""];
//        NSLog(@"%@", str);
        NSString *testString = @"Gsrh rh zm vcznkov lu gsv Zgyzhs Xrksvi!!";
        NSString *upperCaseAlphabet = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        NSString *lowerCaseAlphabet = @"abcdefghijklmnopqrstuvwxyz";
        NSMutableString *cipher = [[NSMutableString alloc]init];
        
        for (int i = 0; i < [testString length]; i++) {
            NSString *character = [NSString stringWithFormat:@"%C",[testString characterAtIndex: i]];
            if ([lowerCaseAlphabet containsString: character] ) {
                
                for (NSUInteger ib=0;ib<[lowerCaseAlphabet length];ib++)
                {
                    if ([lowerCaseAlphabet characterAtIndex:ib] == [character characterAtIndex:0])
                    {
                        NSUInteger change = 25 - ib;
                        //NSLog(@"found: %lu", (unsigned long)ib);
                        NSString *addCharacter = [NSString stringWithFormat:@"%C", [lowerCaseAlphabet characterAtIndex:change]];
                        [cipher appendString:addCharacter];
                    }
                }
                
            }else if([upperCaseAlphabet containsString:character]){
                
                for (NSUInteger ib=0;ib<[upperCaseAlphabet length];ib++)
                {
                    if ([upperCaseAlphabet characterAtIndex:ib] == [character characterAtIndex:0])
                    {
                        NSUInteger change = 25 - ib;
                        //NSLog(@"found: %lu", (unsigned long)ib);
                        NSString *addCharacter = [NSString stringWithFormat:@"%C", [upperCaseAlphabet characterAtIndex:change]];
                        [cipher appendString:addCharacter];
                    }
                }
                
            }else{
                // do nothing and add the odd character to the output
                [cipher appendString:character];
                
            }
        }
        
        NSLog(@"The cipher of '%@' is '%@'", testString, cipher);
        
    }
    return 0;
}
