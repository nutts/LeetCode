//
//  SummaryRangesTest.swift
//  LeetCode
//
//  Created by 遂 李 on 6/30/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//


import XCTest

class SummaryRangesTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConvert() {
        // This is an example of a functional test case.
        let i = [0, 3,3,5,8]
        
        let expected = ["0", "3->5", "8"]
        
        let result = SummaryRanges.convert(i)
        
        XCTAssertEqual(expected, result, "Pass result")

    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
