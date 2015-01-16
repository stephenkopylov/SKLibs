//
//  BasicSharingManager.h
//  RetailPlatform
//
//  Created by Stephen Kopylov on 19/11/14.
//  Copyright (c) 2014 Stephen Kopylov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ShareKit/SHKFacebook.h>
#import <ShareKit/SHKVkontakte.h>
#import <ShareKit/SHKTwitter.h>
#import <ShareKit/ShareKit.h>



typedef NS_ENUM(NSInteger, SharingNetworkType) {
    SharingNetworkTypeFacebook     = 0,
    SharingNetworkTypeTwitter = 1,
    SharingNetworkTypeVk = 2,
};

@interface BasicSharingManager : NSObject<UIActionSheetDelegate>
-(void)share:(SHKItem*)item;
-(void)shareItem:(SHKItem*)item inSocialNetwork:(SharingNetworkType)type;
@end
