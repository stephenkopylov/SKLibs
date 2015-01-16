//
// Created by Stephen Kopylov on 15/10/14.
// Copyright (c) 2014 Pandra. All rights reserved.
//

#import "IP.h"


@implementation IP {

}
+ (UIImage *)imageNamed:(NSString *)name withTintColor:(UIColor *)tintColor {

    UIImage *baseImage = [UIImage imageNamed:name];

    CGRect drawRect = CGRectMake(0, 0, baseImage.size.width, baseImage.size.height);

    UIGraphicsBeginImageContextWithOptions(baseImage.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextTranslateCTM(context, 0, baseImage.size.height);
    CGContextScaleCTM(context, 1.0, (CGFloat) -1.0);

    // draw original image
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGContextDrawImage(context, drawRect, baseImage.CGImage);

    // draw color atop
    CGContextSetFillColorWithColor(context, tintColor.CGColor);
    CGContextSetBlendMode(context, kCGBlendModeSourceAtop);
    CGContextFillRect(context, drawRect);

    UIImage *tintedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return tintedImage;
}
@end