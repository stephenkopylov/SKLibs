//
//  DF.h
//  Let’s Mobile
//
//  Created by TEMP on 10/01/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DF : NSObject
+(NSDate*)dateFromTimestamp:(NSString*)timestamp;
+ (NSDate*)stringDateFromString:(NSString*)string;
+ (NSString*)stringDateFromDate:(NSDate*)date;
@end
