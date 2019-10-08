//
//  RVCManagerExampleUITests.swift
//  RVCManagerExampleUITests
//
//  Created by Максим Скрябин on 10/07/2019.
//  Copyright © 2019 MSKR. All rights reserved.
//

import XCTest

class RVCManagerExampleUITests: XCTestCase {
  
  var app: XCUIApplication!

    override func setUp() {
      super.setUp()
      
      app = XCUIApplication()
      app.launch()
    }

    override func tearDown() {
      super.tearDown()
    }
  
  func testFadeSwitching() {
    let fadeButton = app.buttons["Fade"]
    let firstViewControllerLabel = app.staticTexts["First view controller"]
    let secondViewControllerLabel = app.staticTexts["Second view controller"]
    
    fadeButton.tap()
    sleep(1)
    XCTAssertTrue(secondViewControllerLabel.exists)
    XCTAssertFalse(firstViewControllerLabel.exists)
    
    fadeButton.tap()
    sleep(1)
    XCTAssertTrue(firstViewControllerLabel.exists)
    XCTAssertFalse(secondViewControllerLabel.exists)
  }
  
  func testHorizontalSwitching() {
    let horizontalRightButton = app.buttons["Horizontal right"]
    let horizontalLeftButton = app.buttons["Horizontal left"]
    let firstViewControllerLabel = app.staticTexts["First view controller"]
    let secondViewControllerLabel = app.staticTexts["Second view controller"]
    
    XCTAssertTrue(firstViewControllerLabel.exists)
    XCTAssertFalse(secondViewControllerLabel.exists)
    
    horizontalRightButton.tap()
    sleep(1)
    XCTAssertTrue(secondViewControllerLabel.exists)
    XCTAssertFalse(firstViewControllerLabel.exists)
    
    horizontalLeftButton.tap()
    sleep(1)
    XCTAssertTrue(firstViewControllerLabel.exists)
    XCTAssertFalse(secondViewControllerLabel.exists)
  }
  
  func testVerticalSwitching() {
    let verticalUpButton = app.buttons["Vertical up"]
    let verticalDownButton = app.buttons["Vertical down"]
    let firstViewControllerLabel = app.staticTexts["First view controller"]
    let secondViewControllerLabel = app.staticTexts["Second view controller"]
    
    XCTAssertTrue(firstViewControllerLabel.exists)
    XCTAssertFalse(secondViewControllerLabel.exists)
    
    verticalUpButton.tap()
    sleep(1)
    XCTAssertTrue(secondViewControllerLabel.exists)
    XCTAssertFalse(firstViewControllerLabel.exists)
    
    verticalDownButton.tap()
    sleep(1)
    XCTAssertTrue(firstViewControllerLabel.exists)
    XCTAssertFalse(secondViewControllerLabel.exists)
  }

}
