//
//  RNView.m
//  _idx_SwiftLib_1DAE433E_ios_min10.0
//
//  Created by Josué Santos on 09/02/20.
//

#import "RNView.h"

#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <UIKit/UIKit.h>

@interface BridgeDelegate : NSObject  <RCTBridgeDelegate>

@end

@implementation BridgeDelegate

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

@end

@implementation RNView

//@"TestBuild"
- (UIView *) rootView:(NSString *)moduleName
{
    BridgeDelegate *delegate = [[BridgeDelegate alloc] init];
    RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:delegate
                                              launchOptions:[[NSDictionary alloc] init]];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                     moduleName:moduleName
                                              initialProperties:nil];

    rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
    
    return rootView;
}

@end
