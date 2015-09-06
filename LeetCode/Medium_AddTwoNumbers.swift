//
//  Medium_AddTwoNumbers.swift
//  LeetCode
//
//  Created by 遂 李 on 8/5/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation


class Medium_AddTwoNumbers{
    
    
    class func add(var a : ListNode?, var b :  ListNode? ) -> ListNode? {
        
        var stepUpValue : Int  = 0
        var header : ListNode? = ListNode(v: -1)
        var result = header
        
        while ( a != nil || b != nil ){
            
            var currValue = 0
            
            if a != nil && a!.value > 0  {
                currValue += a!.value
                
            }
            
            if b != nil  && b!.value > 0 {
                currValue += b!.value
            }
            
            if stepUpValue > 0 {
                currValue += stepUpValue
            }
            
            
            var currNode : ListNode? = nil
            
            if currValue >= 10 {
                
                currNode = ListNode(v : currValue % 10)
                stepUpValue = currValue / 10
                
            }else{
                currNode = ListNode(v: currValue)
                stepUpValue = 0
            }
            
            a = a?.next
            b = b?.next
            
            result?.next = currNode
            
            result = result?.next
            
        }
        
        return header?.next
        
    }
    
}