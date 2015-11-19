//
//  Medium_TwoSumTest.swift
//  LeetCode
//
//  Created by 遂 李 on 8/4/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//


import XCTest

class Medium_TwoSumTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        var nums = [2, 7, 11, 15]
        let target = 9
        
        let (a, b) = Medium_TwoSum.twoSum(nums, target: target)
        
        print(a)
        
        print(b)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
