//
//  InvertBinaryTree2.swift
//  LeetCode
//
//  Created by 遂 李 on 11/17/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

class InvertBinaryTree2{
    
    
    class func invert(root : TreeNode){
        
        if root.leftNode == nil || root.rightNode == nil {
            
            return
        
        }else{
            
            let dummy = root.leftNode
            
            root.leftNode = root.rightNode
            
            root.rightNode = dummy
            
            invert(root.leftNode!)
            
            invert(root.rightNode!)
            
        }
    }
    
    
}