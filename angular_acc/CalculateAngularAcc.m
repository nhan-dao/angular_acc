//
//  CalculateAngularAcc.m
//  angular_acc
//
//  Created by Admin on 4/8/14.
//  Copyright (c) 2014 Nhan Dao. All rights reserved.
//

#import "CalculateAngularAcc.h"

@implementation CalculateAngularAcc

-(NSNumber *)vel1:(NSNumber *)a vel2:(NSNumber *)b {
    
    int i = [a intValue];
    int j = [b intValue];
    int myValue = i - j; 
    NSNumber *number = [NSNumber numberWithInteger: myValue];
    return number;
}

@end
