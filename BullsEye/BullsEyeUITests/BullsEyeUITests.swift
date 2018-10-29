//
//  BullsEyeUITests.swift
//  BullsEyeUITests
//
//  Created by Junio Moquiuti on 29/10/18.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest

class BullsEyeUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        app = nil
        super.tearDown()
    }
    
    func testGameStyleSwitch() {
        
        // given
        let slideButton = app.segmentedControls.buttons["Slide"]
        let typeButton = app.segmentedControls.buttons["Type"]
        let slideLabel = app.staticTexts["Get as close as you can to: "]
        let typeLabel = app.staticTexts["Guess where the slider is: "]

        // then
        if slideButton.isSelected {
            XCTAssertTrue(slideLabel.exists)
            XCTAssertFalse(typeLabel.exists)
            
            typeButton.tap()
            XCTAssertTrue(typeLabel.exists)
            XCTAssertFalse(slideLabel.exists)
        } else if typeButton.isSelected {
            XCTAssertTrue(typeLabel.exists)
            XCTAssertFalse(slideLabel.exists)
            
            slideButton.tap()
            XCTAssertTrue(slideLabel.exists)
            XCTAssertFalse(typeLabel.exists)
        }
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
