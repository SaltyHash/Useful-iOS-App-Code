//
//  AppSettings.h
//  BetterWorkOrder
//
//  Created by Developer on 6/6/15.
//  Copyright (c) 2015 Advyon. All rights reserved.
//

#import <Foundation/Foundation.h>

/** Provides a simple interface to the app settings stored in NSUserDefaults. */
@interface AppSettings : NSObject

@property (nonatomic) BOOL autoSync;    // Defaults to YES

// Settings
@property (nonatomic) NSString * someSetting;

+ (instancetype)sharedInstance;

- (void)resetToDefaults;
- (BOOL)synchronize;

@end
