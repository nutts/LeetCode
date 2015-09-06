//
//  MergeTwoSortedListTest.swift
//  LeetCode
//
//  Created by 遂 李 on 7/16/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//


import XCTest

class MergeTwoSortedListTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        var list2  = ListNode(v: 2)
        var list5 = ListNode(v: 5)
        var list8 = ListNode(v: 8)
        
        list2.next = list5
        list5.next = list8
        
        
        var list4 = ListNode(v: 4)
        
        var list6 = ListNode(v: 6)
        list4.next = list6
        
        var list7 = ListNode(v: 7)
        list6.next = list7
        
        var list9 = ListNode(v: 9)
        
        list7.next = list9
        
        var list11 = ListNode(v: 11)
        
        list9.next = list11
        
        
        let result = MergeTwoSortedList.merge(list2, list2: list4)
        
        println(result)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
