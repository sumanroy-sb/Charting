//
//  UserDataController.h
//  Charting
//
//  Created by Suman Roy on 03/12/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface UserDataController : NSObject

+(User*)getCurrentActiveUser;
+(BOOL)loginUser:(NSString*) userName password:(NSString*) password;
+(BOOL)createNewUser: (NSString*)userName password: (NSString*)password emailId: (NSString*)emailId;
+(BOOL)logOutUser;
+(BOOL)checkUserLoginStatus;

@end
