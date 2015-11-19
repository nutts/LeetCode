//
//  MoveZeroesTest.swift
//  LeetCode
//
//  Created by 遂 李 on 11/15/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import XCTest

class MoveZeroesTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {

        let result = MoveZeroes(v: [0, 1, 0, 3, 12])
        
        result.moveZeros2()
        
        XCTAssertEqual(result.nums, [1,3, 12, 0, 0])
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
