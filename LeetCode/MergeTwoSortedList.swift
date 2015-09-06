//
//  MergeTwoSortedList.swift
//  LeetCode
//
//  Created by 遂 李 on 7/16/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class MergeTwoSortedList{
    
    
    class func merge(var list1 : ListNode?, var list2 : ListNode?) -> ListNode?{
        
        //var mergedList : ListNode?
        var currValue : Int?
        
        var header : ListNode? = nil
        
        var mergingNode : ListNode?
        
        while list1 != nil && list2 != nil {
            
            
            if(list1!.value < list2!.value){
                
                //mergedList = list1
                
                currValue = list1!.value
                
                list1 = list1!.next
            
            }else{
            
                //mergedList = list2
                currValue = list2!.value
                
                list2 = list2!.next
                
            }
            
            if header == nil {
                header = ListNode(v: currValue!)
                mergingNode = header
                
            }else{
                mergingNode?.next = ListNode(v: currValue!)
                mergingNode = mergingNode?.next
            }
            
            
        }
        
        if list1 != nil {
            mergingNode!.next =  list1
        }else if list2 != nil{
            mergingNode!.next = list2
        }
        
        return header
    }
    
}