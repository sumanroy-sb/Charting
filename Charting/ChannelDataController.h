//
//  VideoDataController.h
//  Charting
//
//  Created by Suman Roy on 01/12/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChannelDataController : NSObject

+(NSMutableArray*)getChannelDetailsFor: (NSString*)channel page:(int) pageNo;

@end