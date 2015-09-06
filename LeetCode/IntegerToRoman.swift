//
//  IntegerToRoman.swift
//  LeetCode
//
//  Created by 遂 李 on 8/28/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class IntegerToRomain{
    
    
    class func convert( romainStr : String, currValue : Int ) -> String{
        
        
        if currValue / 1000 > 0 {
            let n = currValue / 1000
        
            switch n {
                case 1 : return convert("M", currValue: currValue % 1000)
                case 2 : return convert("MM", currValue: currValue % 1000)
                case 3 : return convert("MMM", currValue: currValue % 1000)
                default: return "error"
        
            }
        
        }else if currValue / 500 > 0 {
            let n = currValue / 500
        
            switch n {
                case 1 : return convert(romainStr + "D", currValue: currValue % 500)
                default : return "error"
        
            }
        }else if currValue / 100 > 0 {
            let n = currValue / 100
        
            switch n {
                case 1 : return convert(romainStr + "C", currValue: currValue % 100)
                case 2 : return convert(romainStr + "CC", currValue: currValue % 100)
                case 3 : return convert(romainStr + "CCC", currValue : currValue % 100)
                case 4 : return convert(romainStr + "CD", currValue : currValue % 100)
                default : return "error"
        
            }
        
        }else if currValue / 50 > 0 {
            let n = currValue / 50
        
            switch n {
                case 1 : return convert(romainStr + "L", currValue : currValue % 50)
                default : return "error 50"
        
            }
        
        }else if currValue / 10 > 0 {
            let n = currValue / 10
        
            switch n {
            case 1 : return convert(romainStr + "X", currValue : currValue % 10)
            case 2 : return convert(romainStr + "XX", currValue : currValue % 10)
            case 3 : return convert(romainStr + "XXX", currValue : currValue % 10)
            case 4 : return convert(romainStr + "XL", currValue : currValue % 10)
                default : return "error 10"
        
            }
        }else if currValue / 5 > 0 {
            let n = currValue / 5
        
            switch n {
            case 1 : return convert(romainStr + "V", currValue : currValue % 5)
                default : return "erro 5"
            }
        
        }else if currValue > 0 {
            switch currValue {
                case 1: return romainStr + "I"
            case 2 : return romainStr + "II"
            case 3: return romainStr + "III"
            case 4 : return romainStr + "IV"
            default : return "error1"
            }
        
        }else{
          return romainStr
        }
    }
    
    
}