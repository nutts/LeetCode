//
//  Medium_AddTwoNumbersTest.swift
//  LeetCode
//
//  Created by 遂 李 on 8/5/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import UIKit
import XCTest

class Medium_AddTwoNumbersTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
       var node1 = ListNode(v: 2)
        node1.next = ListNode(v: 4)
        node1.next.next = ListNode(v: 3)
        
        var node2 = ListNode(v: 5)
        
        node2.next = ListNode(v: 6)
        node2.next.next = ListNode(v: 4 )
        
        let result = Medium_AddTwoNumbers.add(node1, b: node2)
        
        print(result)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
