//
//  PlusOneTest.swift
//  LeetCode
//
//  Created by 遂 李 on 8/1/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//


import XCTest

class PlusOneTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        var test = [1, 3]
        var result = PlusOne.plusOne(test)
        XCTAssertEqual([1, 4], result, "falie")
        
        test = [1, 9]
        result = PlusOne.plusOne(test)
        
        XCTAssertEqual([2, 0], result, "falie")
        
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
