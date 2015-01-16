//
//  TD.m
//  Dirtygram
//
//  Created by Stephen Kopylov on 27/09/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "TD.h"

@implementation TD
+ (NSString *)timeDifferenceFromTS:(NSString *)ts {
    NSDate *dateA = [NSDate dateWithTimeIntervalSince1970:[ts doubleValue]];

    NSDate *dateB = [NSDate date];

    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [calendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSWeekCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit
                                               fromDate:dateA
                                                 toDate:dateB
                                                options:0];

    NSString *resultString = [[NSString alloc] init];
    if (components.year != 0) {
        resultString = [NSString stringWithFormat:@"%li %@", (long) components.year, NSLocalizedString(@"year_reduction", nil)];
    }
    else if (components.month != 0) {
        resultString = [NSString stringWithFormat:@"%li %@", (long) components.month, NSLocalizedString(@"month_reduction", nil)];
    }
    else if (components.day != 0) {
        resultString = [NSString stringWithFormat:@"%li %@", (long) components.day, NSLocalizedString(@"days_reduction", nil)];
    }
    else if (components.hour != 0) {
        resultString = [NSString stringWithFormat:@"%li %@", (long) components.hour, NSLocalizedString(@"hours_reduction", nil)];
    }
    else if (components.minute != 0) {
        resultString = [NSString stringWithFormat:@"%li %@", (long) components.minute, NSLocalizedString(@"minutes_reduction", nil)];
    }
    else if (components.second != 0) {
        resultString = [NSString stringWithFormat:@"%li %@", (long) components.second, NSLocalizedString(@"seconds_reduction", nil)];
    }
    if ([resultString isEqualToString:@""]) {
        resultString = @"Только что";
    }

    return resultString;
}
@end
