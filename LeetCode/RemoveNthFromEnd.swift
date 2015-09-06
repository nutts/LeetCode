//
//  RemoveNthFromEnd.swift
//  LeetCode
//
//  Created by 遂 李 on 7/11/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class RemoveNthFromEnd{
    
    
    class func remove(head : ListNode, n : Int) -> ListNode{
        var offsetNode : ListNode = head
        
        var checkLastNode : ListNode = head
        
        var stepForward : Int = 0
        
        while(checkLastNode.next != nil){
            checkLastNode = checkLastNode.next
            
            ++stepForward
            
            if stepForward > n {
                
                offsetNode = offsetNode.next
            }
       }
        
       offsetNode.next = offsetNode.next.next
    
      return head
    
    }
    
    
    
}