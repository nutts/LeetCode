//
//  ContainerWithMostWaterTest.swift
//  LeetCode
//
//  Created by 遂 李 on 8/27/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import UIKit
import XCTest

class ContainerWithMostWaterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let heights = [1, 4, 6, 2, 5]
        let result = ContainerWithMostWater.maxArea(heights)
        
        print(result)
        
    
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
