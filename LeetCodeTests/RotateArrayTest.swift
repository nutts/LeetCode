//
//  RotateArrayTest.swift
//  LeetCode
//
//  Created by 遂 李 on 11/8/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import XCTest

class RotateArrayTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
       let inputArray = [1,2,3,4,5,6,7]
        
       let resultArray = RotateArray.rotate(inputArray, k: 3)
        
        XCTAssertEqual([5,6,7,1,2,3,4], resultArray)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
