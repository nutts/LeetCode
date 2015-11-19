//
//  MaxinumDepthOfBinaryTreeTest.swift
//  LeetCode
//
//  Created by 遂 李 on 11/9/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import XCTest

class MaxinumDepthOfBinaryTreeTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let leaf1 = TreeNode(v: 4)
        let left2 = TreeNode(v: 7)
        
        let node2 = TreeNode(v: 3)
        
        node2.leftNode = leaf1
        node2.rightNode = left2
        
        let root = TreeNode(v: 0)
        
        root.rightNode = node2
        
        MaxinumDepthOfBinaryTree.maxDepth(root)
        
        XCTAssertEqual(3, MaxinumDepthOfBinaryTree.totalMaxDepth)
        
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
