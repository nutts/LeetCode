//
//  CalendarBrain.swift
//  LeetCode
//
//  Created by 遂 李 on 9/3/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation


class Element{
 
    var doubleValue : Double?
    
    var opr : String?
    
    init(doubleValue : Double){
        self.doubleValue = doubleValue
    }
    
    init(opratorName : String){
        self.opr = opratorName
    }
    
    func type() -> String{
        if opr != nil {
            return "operator"
        }else if doubleValue != nil {
            return "operand"
        }else{
            return "unknown"
        }
    }
    
    
}

class CalendarBrain{
    
    var stack = [Element]()
    
    init(){
        
    }
    
    func pushLastElement() -> Element{
        return stack.removeLast()
    }
    
    func push(newElement : String) {
        switch(newElement){
        case "*" :
            let e = Element(opratorName: "*")
            stack.append(e)
        case "+" :
            let e = Element(opratorName: "+")
            stack.append(e)
        default:
            let d = (newElement as NSString).doubleValue
            let e = Element(doubleValue: d)
            stack.append(e)
        }
    }
    
    
    func evalue(a : Element, b : Element, c : Element) -> Element {
        
        var b1 = b
        if b1.type() == "operator" {
            b1 = evalue(b1, b: stack.removeLast(), c: stack.removeLast())
        }
        
        var c1 = c
        if c1.type() == "operator" {
            c1 = evalue(c1, b: stack.removeLast(), c: stack.removeLast())
        }
        
        if b1.type() == "operator" || c1.type() == "operator" {
            assertionFailure("这个时候不应该还是operator类型")
        }else{
           return Element(doubleValue: b1.doubleValue! + c1.doubleValue!)
        }
        
        return Element(doubleValue: 0.0)
        
    }
    
    func evalue() -> Double {
        
        let result = evalue(stack.removeLast(), b: stack.removeLast(), c: stack.removeLast())
        
        return result.doubleValue!
    
    }
    
    
}