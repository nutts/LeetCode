//
//  BinaryTree.swift
//  LeetCode
//
//  Created by 遂 李 on 6/30/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class BinaryTreeNode{
    
    var value : Int
    
    var left : BinaryTreeNode?
    
    var right : BinaryTreeNode?
    
    init(nodeValue : Int){
     
        value = nodeValue
        
        
    }
    
    init(nodeValue : Int, leftLeafValue : Int, rightLeafValue : Int){
        
        self.left = BinaryTreeNode(nodeValue: leftLeafValue)
        
        self.right = BinaryTreeNode(nodeValue: rightLeafValue)
        
        self.value = nodeValue
        
    }
    
}