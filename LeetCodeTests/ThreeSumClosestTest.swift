//
//  ThreeSumClosestTest.swift
//  LeetCode
//
//  Created by 遂 李 on 8/31/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import UIKit
import XCTest

class ThreeSumClosestTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let arr = [-1, 2, 1, -4]
        let target = 1
        
        XCTAssertEqual(2, ThreeSumClosest.threeSumClosest2(arr, target: target), "sss")
        
        
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
