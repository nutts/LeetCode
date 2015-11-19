//
//  DeleteNodeInaLinkedListTest.swift
//  LeetCode
//
//  Created by 遂 李 on 11/11/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import XCTest

class DeleteNodeInaLinkedListTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        
        let node1 = ListNode(v: 1)
        let node2 = ListNode(v: 2)
        let node3 = ListNode(v: 3)
        let node4 = ListNode(v: 4)
        
        node1.next = node2
        node2.next = node3
        node3.next = node4
        
        let result = DeleteNodeInaLinkedList.deleteNode(node1)
        
        
        print(result)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
