#import "CM.h"


@implementation CM

+ (NSString *)getCoockieWithId:(id)id {
    return [[NSUserDefaults standardUserDefaults] stringForKey:id];
}

+ (void)setCoockieWithId:(NSString *)id andValue:(id)value {
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:id];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+(NSDictionary *)getDictionaryWithId:(NSString*)id{
    return [[NSUserDefaults standardUserDefaults] dictionaryForKey:id];
}


+ (void)setCoockieWithCustomClassAndId:(NSString *)id andValue:(id)value {
    if (value != nil) {
        [[NSUserDefaults standardUserDefaults] rm_setCustomObject:value forKey:id];
    }
}

+ (id)getCoockieWithCustomClassAndId:(NSString *)id {
    return [[NSUserDefaults standardUserDefaults] rm_customObjectForKey:id];
}

+ (void)clearAllCoockies {
    NSString *domainName = [[NSBundle mainBundle] bundleIdentifier];
    [[NSUserDefaults standardUserDefaults] removePersistentDomainForName:domainName];

}

//метод возвращает количество вызовов приложения
+ (NSInteger)getIntegerCoockieWithId:(id)id {
    return [[NSUserDefaults standardUserDefaults] integerForKey:id];
}


@end
