//
//  InflationCalcUITests.m
//  InflationCalcUITests
//
//  Created by Eduardo Rosas on 9/13/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface InflationCalcUITests : XCTestCase

@end

@implementation InflationCalcUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  
  [XCTContext runActivityNamed:@"screenshot"
                         block:^(id<XCTActivity>  _Nonnull activity) {
                           
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [/*@START_MENU_TOKEN@*/app.textFields[@"Current inflation rate"]/*[["app","[",".otherElements matchingIdentifier:@\"Current inflation rate Current risk free rate Amount you are saving For how long (in years) will you save it? Calculate inflation 1 years from now you will still have $0, but it will only be worth $0. But if you invest it at a risk free rate you will have $0. Which will be worth $0 after inflation. A difference of: $0. Dismiss All RCTBridge required dispatch_sync to load RCTDevLoadingView. This may lead to deadlocks\"]",".otherElements matchingIdentifier:@\"Current inflation rate Current risk free rate Amount you are saving For how long (in years) will you save it? Calculate inflation 1 years from now you will still have $0, but it will only be worth $0. But if you invest it at a risk free rate you will have $0. Which will be worth $0 after inflation. A difference of: $0.\"]",".otherElements[@\"Current inflation rate\"].textFields[@\"Current inflation rate\"]",".textFields[@\"Current inflation rate\"]"],[[[-1,0,1]],[[-1,5],[-1,4],[1,3,3],[1,2,2]],[[-1,5],[-1,4],[1,3,3]],[[-1,5],[-1,4]]],[0,0]]@END_MENU_TOKEN@*/ tap];
    
    XCUIElement *key = app/*@START_MENU_TOKEN@*/.keys[@"3"]/*[[".keyboards.keys[@\"3\"]",".keys[@\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [key tap];
    
    [/*@START_MENU_TOKEN@*/app.textFields[@"Current risk free rate"]/*[["app","[",".otherElements matchingIdentifier:@\"Current risk free rate Amount you are saving For how long (in years) will you save it? Calculate inflation 1 years from now you will still have $0, but it will only be worth $0. But if you invest it at a risk free rate you will have $0. Which will be worth $0 after inflation. A difference of: $0. Dismiss All RCTBridge required dispatch_sync to load RCTDevLoadingView. This may lead to deadlocks\"]",".otherElements matchingIdentifier:@\"Current risk free rate Amount you are saving For how long (in years) will you save it? Calculate inflation 1 years from now you will still have $0, but it will only be worth $0. But if you invest it at a risk free rate you will have $0. Which will be worth $0 after inflation. A difference of: $0.\"]",".otherElements[@\"Current risk free rate\"].textFields[@\"Current risk free rate\"]",".textFields[@\"Current risk free rate\"]"],[[[-1,0,1]],[[-1,5],[-1,4],[1,3,3],[1,2,2]],[[-1,5],[-1,4],[1,3,3]],[[-1,5],[-1,4]]],[0,0]]@END_MENU_TOKEN@*/ tap];
    
    XCUIElement *key2 = app/*@START_MENU_TOKEN@*/.keys[@"6"]/*[[".keyboards.keys[@\"6\"]",".keys[@\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [key2 tap];
    
    [/*@START_MENU_TOKEN@*/app.textFields[@"Amount you are saving"]/*[["app","[",".otherElements matchingIdentifier:@\"Amount you are saving For how long (in years) will you save it? Calculate inflation 1 years from now you will still have $0, but it will only be worth $0. But if you invest it at a risk free rate you will have $0. Which will be worth $0 after inflation. A difference of: $0. Dismiss All RCTBridge required dispatch_sync to load RCTDevLoadingView. This may lead to deadlocks\"]",".otherElements matchingIdentifier:@\"Amount you are saving For how long (in years) will you save it? Calculate inflation 1 years from now you will still have $0, but it will only be worth $0. But if you invest it at a risk free rate you will have $0. Which will be worth $0 after inflation. A difference of: $0.\"]",".otherElements[@\"Amount you are saving\"].textFields[@\"Amount you are saving\"]",".textFields[@\"Amount you are saving\"]"],[[[-1,0,1]],[[-1,5],[-1,4],[1,3,3],[1,2,2]],[[-1,5],[-1,4],[1,3,3]],[[-1,5],[-1,4]]],[0,0]]@END_MENU_TOKEN@*/ tap];
    
    XCUIElement *key3 = app/*@START_MENU_TOKEN@*/.keys[@"1"]/*[[".keyboards.keys[@\"1\"]",".keys[@\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [key3 tap];
    
    XCUIElement *key4 = app/*@START_MENU_TOKEN@*/.keys[@"0"]/*[[".keyboards.keys[@\"0\"]",".keys[@\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [key4 tap];
    [key4 tap];
    [key4 tap];
    
    [/*@START_MENU_TOKEN@*/app.textFields[@"For how long (in years) will you save it?"]/*[["app","[",".otherElements matchingIdentifier:@\"For how long (in years) will you save it? Calculate inflation 1 years from now you will still have $1000, but it will only be worth $0. But if you invest it at a risk free rate you will have $0. Which will be worth $0 after inflation. A difference of: $0. Dismiss All RCTBridge required dispatch_sync to load RCTDevLoadingView. This may lead to deadlocks\"]",".otherElements matchingIdentifier:@\"For how long (in years) will you save it? Calculate inflation 1 years from now you will still have $1000, but it will only be worth $0. But if you invest it at a risk free rate you will have $0. Which will be worth $0 after inflation. A difference of: $0.\"]",".otherElements[@\"For how long (in years) will you save it?\"].textFields[@\"For how long (in years) will you save it?\"]",".textFields[@\"For how long (in years) will you save it?\"]"],[[[-1,0,1]],[[-1,5],[-1,4],[1,3,3],[1,2,2]],[[-1,5],[-1,4],[1,3,3]],[[-1,5],[-1,4]]],[0,0]]@END_MENU_TOKEN@*/ tap];
    [key3 tap];
    [key4 tap];
    
    [app.buttons[@"Calculate inflation"] tap];
    
    XCUIElement *differenceLabel = /*@START_MENU_TOKEN@*/[[XCUIApplication alloc] init].staticTexts[@"A difference of: $588.46495860763."]/*[["[[XCUIApplication alloc] init]","[",".otherElements matchingIdentifier:@\"Calculate inflation 10 years from now you will still have $1000, but it will only be worth $744.0939148967252. But if you invest it at a risk free rate you will have $1790.8476965428547. Which will be worth $1332.5588735043552 after inflation. A difference of: $588.46495860763. Dismiss All RCTBridge required dispatch_sync to load RCTDevLoadingView. This may lead to deadlocks\"]",".otherElements matchingIdentifier:@\"Calculate inflation 10 years from now you will still have $1000, but it will only be worth $744.0939148967252. But if you invest it at a risk free rate you will have $1790.8476965428547. Which will be worth $1332.5588735043552 after inflation. A difference of: $588.46495860763.\"].staticTexts[@\"A difference of: $588.46495860763.\"]",".staticTexts[@\"A difference of: $588.46495860763.\"]"],[[[-1,0,1]],[[-1,4],[1,3],[1,2,2]],[[-1,4],[1,3]]],[0,0]]@END_MENU_TOKEN@*/;
    
    XCTAssertEqual(differenceLabel.exists, true);
                           
   }];
}

@end
