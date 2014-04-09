//
//  main.m
//  angular_acc
//
//  Created by Admin on 4/8/14.
//  Copyright (c) 2014 Nhan Dao. All rights reserved.
//
// The array here is just for testing. The actual array should contain the angular velocity from the sensor

#import <Foundation/Foundation.h>
#import "CalculateAngularAcc.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // this array is use for testing. The real array should contain information from the sensor
        NSMutableArray *customTickLocations = [NSMutableArray array];
        
        // this array will store the angular acc. 
        NSMutableArray *arrayAngularAcc = [NSMutableArray array];
        
        //initialize to use the function that declare in calculateangularacc
        CalculateAngularAcc *util = [[CalculateAngularAcc alloc]init]; 
        NSNumber *j = 0;
        NSNumber *vel = 0;
        
        for (int i=0; i<50; i++)
        {
            vel = [NSDecimalNumber numberWithDouble:i];
            [customTickLocations addObject:vel];
            
            //NSLog(@"for %i, array is %@",i,customTickLocations[i]);
            
            if (i== 0) {
                j = [NSDecimalNumber numberWithDouble:0];
                [arrayAngularAcc addObject:j];
            }
            else {
                j = [util vel1:(customTickLocations[i]) vel2:(customTickLocations[i-1])];
                [arrayAngularAcc addObject:j];
            }
             NSLog(@"for %i, array is %@",i,arrayAngularAcc[i]);        }
        
    }
    return 0;
}

