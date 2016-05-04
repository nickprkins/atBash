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
        NSString *testString = @"draziw*";
        
        NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[testString length]];
        int otheri = 0;
        for (int i = 0; i < [testString length]; i++) {
            NSString *ichar  = [NSString stringWithFormat:@"%c", [testString characterAtIndex:i]];
            //[characters addObject:ichar];
            if (i == 0){
                [characters insertObject: ichar atIndex:i];
            }else{
                [characters insertObject:ichar atIndex:0];
            }
        }
        NSString *str = [characters componentsJoinedByString:@""];
        NSLog(@"%@", str);
        
        
    }
    return 0;
}
