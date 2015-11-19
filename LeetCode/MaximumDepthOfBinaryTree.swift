//
//  MaximumDepthOfBinaryTree.swift
//  LeetCode
//
//  Created by 遂 李 on 11/9/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

class TreeNode {
    
    var leftNode : TreeNode?
    var rightNode : TreeNode?
    
    let value : Int
    
    init(v : Int){
        value = v
    }
}


class MaxinumDepthOfBinaryTree{
    
    static var totalMaxDepth = 0
    
    class func checkCurrDepth(currNode : TreeNode, var currDepth : Int){
        
        if currNode.leftNode == nil && currNode.rightNode == nil {
            //this is leaf
            if currDepth > totalMaxDepth {
               totalMaxDepth = currDepth
            }
        }
        
        ++currDepth
        
        if let leftNode = currNode.leftNode{
            checkCurrDepth(leftNode, currDepth: currDepth)
        }
        
        if let rightNode = currNode.rightNode{
            checkCurrDepth(rightNode, currDepth: currDepth)
        }
    }
    
    class func maxDepth(root : TreeNode){
        checkCurrDepth(root, currDepth: 1)
        
    }
    
    
    
}