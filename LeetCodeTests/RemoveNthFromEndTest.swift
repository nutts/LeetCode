//
//  RemoveNthFromEndTest.swift
//  LeetCode
//
//  Created by 遂 李 on 7/11/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//


import XCTest

class RemoveNthFromEndTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        var root = ListNode(v: 1)
        var node2 = ListNode(v: 2)
        root.next = node2
        
        var node3 = ListNode(v: 3)
        node2.next = node3
        
        
        var node4 = ListNode(v : 4)
        node3.next = node4
        
        var node5 = ListNode(v: 5)
        node4.next = node5
        
        var newHead = RemoveNthFromEnd.remove(root, n: 2)
        
        println(newHead)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
