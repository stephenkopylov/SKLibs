#import <Foundation/Foundation.h>
#import "NSUserDefaults+RMSaveCustomObject.h"

@interface SKCoockies : NSObject

+ (NSString *)getCoockieWithId:(id)id;

+ (void)setCoockieWithId:(NSString *)id andValue:(id)value;

+ (void)setCoockieWithCustomClassAndId:(NSString *)id andValue:(id)value;

+ (id)getCoockieWithCustomClassAndId:(NSString *)id;

+ (NSInteger)getIntegerCoockieWithId:(id)id;

+(NSDictionary *)getDictionaryWithId:(NSString*)id;

@end
