//
//  MT.m
//  Piquadro
//
//  Created by TEMP on 28/07/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "MT.h"

@implementation MT
+(float)calculateSale:(float)oldPrice withNewPrice:(float)newPrice{
    float sale = 100-newPrice/(oldPrice/100.0);
    return round(sale);
}
@end
