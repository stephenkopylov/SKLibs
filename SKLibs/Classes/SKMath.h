//
//  SKMath.h
//  Piquadro
//
//  Created by TEMP on 28/07/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SKMath : NSObject
+(float)calculateSale:(float)oldPrice withNewPrice:(float)newPrice;
+(CGFloat)pixelToPoints:(CGFloat)px;
@end
