//
//  AppSettings.m
//
//  MIT Licensed.
//  Copyright (c) 2016 Austin Bowen.
//

#import "AppSettings.h"

@implementation AppSettings

+ (instancetype)sharedInstance
{
    // Class-agnostic code
    static dispatch_once_t onceToken;
    static id              singleton = nil;
    dispatch_once(&onceToken, ^{
        singleton = [[[self class] alloc] init];
    });
    return singleton;
}

- (instancetype)init
{
    if (!(self = [super init])) return nil;
    
    self.autoSync = YES;
    
    return self;
}

#pragma mark - Methods

- (void)resetToDefaults
{
    [[NSUserDefaults standardUserDefaults] removePersistentDomainForName:[[NSBundle mainBundle] bundleIdentifier]];
}

- (BOOL)synchronize
{
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

#pragma mark - Properties

- (NSString *)someSetting
{
    return [[NSUserDefaults standardUserDefaults] stringForKey:@"someSetting"];
}

- (void)setSomeSetting:(NSString *)someSetting
{
    [[NSUserDefaults standardUserDefaults] setObject:someSetting
                                              forKey:@"someSetting"];
    if (self.autoSync) [self synchronize];
}

// Repeat for additional settings...

@end
