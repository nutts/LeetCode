//
//  DeleteNodeinaLinkedList.swift
//  LeetCode
//
//  Created by 遂 李 on 11/11/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

class ListNode2 {
    let val : Int
    var next : ListNode2?
    
    init(v : Int ){
        val = v
    }
}

class DeleteNodeInaLinkedList{
    
    class func deleteNode(node : ListNode) -> ListNode{
        
        let k = 3
        
        var before : ListNode = node
        
        var after : ListNode?
        
        for var i = 0 ; i < k - 2 ; ++i {
            
            before = before.next
        }
        
        after = before.next.next
        
        
        before.next = after
        
        return node
    }
    
    
}