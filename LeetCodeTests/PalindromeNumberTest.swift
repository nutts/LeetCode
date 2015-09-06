//
//  PalindromeNumberTest.swift
//  LeetCode
//
//  Created by 遂 李 on 7/8/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//


import XCTest

class PalindromeNumberTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let r = PalindromeNumber.check(12321)
        
        XCTAssertTrue(r, "has be true")
        
        let r2 = PalindromeNumber.check(7890)
        
        XCTAssertTrue(r2, "has be true")

        
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
