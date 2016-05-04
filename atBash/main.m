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
        
        //setup cipher keys and message to cipher
        NSString *testString = @"Gsrh rh zm vcznkov lu gsv Zgyzhs Xrksvi!!";
        NSString *upperCaseAlphabet = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        NSString *lowerCaseAlphabet = @"abcdefghijklmnopqrstuvwxyz";
        NSMutableString *cipher = [[NSMutableString alloc]init];
        
        // This will run through the length of the testString message and compare to the cipher alphabet keys.
        for (int i = 0; i < [testString length]; i++) {
            NSString *character = [NSString stringWithFormat:@"%C",[testString characterAtIndex: i]];
            
            //lowercase letters will be changed here.
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
            
            // uppercase letters will be changed here.
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
                
                // Characters will not be changed, but will just be appended to the cipher as is.
                [cipher appendString:character];
                
            }
        }
        
        // Print out the results!
        NSLog(@"The cipher of '%@' is '%@'", testString, cipher);
        
    }
    return 0;
}
