//
//  PP.m
//  Let’s Mobile
//
//  Created by TEMP on 13/01/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "PP.h"

@implementation PP

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
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
