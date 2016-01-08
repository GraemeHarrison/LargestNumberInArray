//
//  main.m
//  LargestNumberAssignment
//
//  Created by Graeme Harrison on 2016-01-05.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

int main() {
    
//  NSArray *array = @[@3, @7, @6, @8];
    NSArray *array = @[@44, @5, @6];
    
    NSObject *largestNum;
    
    for (NSUInteger index = 1; index < array.count; index++) {
        
        if ( [array objectAtIndex:index] > [array objectAtIndex:index-1] && [array objectAtIndex:index] > largestNum ) {
            largestNum = [array objectAtIndex:index];
        }
    }
    
    if (largestNum > [array objectAtIndex:0]) {
        NSLog(@"The largest number is: %@", largestNum);
    } else {
        NSLog(@"The largest number is: %@", [array objectAtIndex:0]);
    }
    return 0;
}

//  Write a method that finds the highest number in an unsorted array and returns it. It should work for any array of numbers being passed in ex) @[@3, @7, @6, @8] or @[@44, @5, @6]