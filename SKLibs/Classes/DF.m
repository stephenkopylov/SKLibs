//
//  DF.m
//  Let’s Mobile
//
//  Created by TEMP on 10/01/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "DF.h"

@implementation DF
+ (NSDateFormatter*)stringDateFormatter
{
  static NSDateFormatter* formatter = nil;
  if (formatter == nil)
  {
    formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd MMMM yyyy"];
  }
  return formatter;
}

+(NSDate*)dateFromTimestamp:(NSString*)timestamp{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[timestamp doubleValue]];
    return date;
}

+ (NSDate*)stringDateFromString:(NSString*)string
{
  return [[self stringDateFormatter] dateFromString:string];
}

+ (NSString*)stringDateFromDate:(NSDate*)date
{
  return [[self stringDateFormatter] stringFromDate:date];
}
@end
