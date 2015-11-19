//
//  CalendarBrainTest.swift
//  LeetCode
//
//  Created by 遂 李 on 9/3/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import UIKit
import XCTest

class CalendarBrainTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let brain = CalendarBrain()
        
        brain.push("7")
        
        brain.push("3.0")
        
        brain.push("4")
        
        brain.push("+")
        
        brain.push("+")
        
        
        let result = brain.evalue()
        
        print(result)
    
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
