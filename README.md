# Useful-iOS-App-Code
A collection of generalized software files that I have found useful in the development of iOS apps.

## AppSettings.h/m
Tired of having to fumble around with NSUserDefaults every time you want to access or change a setting in your app?  Can't seem to remember the key name you gave to that variable three months ago?  Check out this simple and easy-to-use singleton class.  Example usage:

```Objective-C
// Get the setting "someSetting"
NSString * setting = [AppSettings sharedInstance].someSetting;
// Save the new setting (auto-synchronized with user defaults)
[AppSettings sharedInstance].someSetting = @"New setting!";
```
Super simple to use, and very easy to extend.
