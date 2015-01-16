//
//  SKDate.h
//  Dirtygram
//
//  Created by Stephen Kopylov on 27/09/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKDate : NSObject
+ (NSDate *)dateFromTimestamp:(NSString *)timestamp;

+ (NSDate *)stringDateFromString:(NSString *)string;

+ (NSString *)stringDateFromDate:(NSDate *)date;

+ (NSString *)timeDifferenceFromTS:(NSString *)ts;
@end
