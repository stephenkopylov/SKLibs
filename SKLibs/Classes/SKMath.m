//
//  SKMath.m
//  Piquadro
//
//  Created by TEMP on 28/07/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKMath.h"

@implementation SKMath
+(float)calculateSale:(float)oldPrice withNewPrice:(float)newPrice{
    float sale = 100-newPrice/(oldPrice/100.0);
    return round(sale);
}

+(CGFloat)pixelToPoints:(CGFloat)px {
    CGFloat pointsPerInch = 72.0;
    CGFloat scale = 1;
    float pixelPerInch;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        pixelPerInch = 132 * scale;
    } else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        pixelPerInch = 163 * scale;
    } else {
        pixelPerInch = 160 * scale;
    }
    CGFloat result = px * pointsPerInch / pixelPerInch;
    return result;
}
@end
