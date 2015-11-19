//
//  InvertBinaryTree.swift
//  LeetCode
//
//  Created by 遂 李 on 6/30/15.
//  Copyright (c) 2015 遂 李. All rights reserved.
//

import Foundation

class InvertBinaryTree{
    
    var rootTree : BinaryTreeNode
    
    init(){
        
        let leftNode = BinaryTreeNode(nodeValue: 2, leftLeafValue: 1, rightLeafValue: 3)
        
        
        let rightNode = BinaryTreeNode(nodeValue: 7, leftLeafValue: 6, rightLeafValue: 9)
        
        
        rootTree = BinaryTreeNode(nodeValue: 4)
        
        rootTree.left = leftNode
        
        rootTree.right = rightNode
        
    }
    
    
    func invert(currNode : BinaryTreeNode?){
        
        if currNode != nil {
            
            if currNode?.left != nil && currNode?.right != nil{
                
                let dummy = currNode?.left
                
                currNode!.left = currNode!.right
                
                currNode?.right = dummy
                
                //currNode?.right?.value = 1
                
                
                invert(currNode?.left)
                
                invert(currNode?.right)
                
                
            }else{
                
                let dummyValue = currNode?.value
                
                currNode?.value = currNode!.value
                
                currNode?.value = dummyValue!
                
            }

        }
        
        
        
    }
    
    func printTree(currNode : BinaryTreeNode?){
        
        if currNode != nil {
            
            if currNode?.left != nil && currNode?.right != nil{
                
                print("node : \(currNode?.value)")
               
                print(" node \(currNode?.value) -> left:")
               
                printTree(currNode?.left)
                
                print(" node \(currNode?.value) -> right:")
                
                printTree(currNode?.right)
                
                
            }else{
                print(currNode?.value)
            }
            
        }

        
        
    }
    
    
    
    
    
}