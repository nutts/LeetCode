//
//  Jiechen.swift
//  LeetCode
//
//  Created by 遂 李 on 11/9/15.
//  Copyright © 2015 遂 李. All rights reserved.
//

import Foundation

class Jiechen {
    
    
    class func calc( n : Int ) -> Int{
        
        if n == 0 {
            return 1
            
        }else{
            return n * calc( n - 1 )
        }
    }
    
    
}