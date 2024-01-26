#import "AppDelegate.h"
#import <GooglePlaces/GooglePlaces.h>
#import <GoogleMaps/GoogleMaps.h>


#import <React/RCTBundleURLProvider.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.moduleName = @"GooglePlacesExample";
  // You can add your custom initial props in the dictionary below.
  // They will be passed down to the ViewController used by React Native.
  self.initialProps = @{};
//  NSString *placesApiKey = @"AIzaSyBzVFvs0eutiD8YIzZuJqc7KUg25wpwWbg";
  NSString *placesApiKey = @"AIzaSyBzVFvs0eutiD8YIzZuJqc7KUg25wpwWbg";
  [GMSPlacesClient provideAPIKey:placesApiKey];
  [GMSServices provideAPIKey:placesApiKey];
  

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
  return [self getBundleURL];
}

- (NSURL *)getBundleURL
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

@end
