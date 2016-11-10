//
//  AppSettings.h
//
//  MIT Licensed.
//  Copyright (c) 2015 Austin Bowen.
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
