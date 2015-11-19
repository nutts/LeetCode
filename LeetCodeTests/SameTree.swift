//
//  SameTree.swift
//  LeetCode
//
//  Created by 遂 李 on 11/12/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

class SameTree{
    
    static var isTheSame = true //0 表示是一样的， 其他表示不一样
    
    
    class func isSameTree(p : TreeNode?, q : TreeNode?) -> Bool{
        
        if p == nil && q == nil {
            
            if p?.value == q?.value {
                
                return true
                
            }else{
                
                return false
            }
            
        }else if p != nil && q != nil {
            
            return isSameTree(p?.rightNode, q: q?.rightNode) && isSameTree(p?.leftNode, q: q?.leftNode)
            
            
        }else{
            
            return false
        }
    }
}