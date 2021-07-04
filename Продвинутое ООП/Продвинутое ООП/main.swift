//
//  main.swift
//  Продвинутое ООП
//
//  Created by Андрей  on 04.07.2021.
//

import Foundation

struct Queue<T>{
    
    var store = [T]()
    
    mutating func beInQueue(_ item: T) {
        store.append(item)
    }
    
    mutating func exitQueue() -> T? {
        
        guard store.count > 0 else {return nil}
        return store.removeFirst()
        
    }
    func filter(_ predicate: (T) -> Bool) -> [T] {
        var result = [T]()
        for item in store {
            if predicate(item){
                result.append(item)
            }
        }
        return result
    }
    
    func map<U>(_ transformPredicate: (T) -> U) -> [U] {
        var result = [U]()
        for item in store {
            let transformedItem = transformPredicate(item)
            result.append(transformedItem)
        }
        
        return result 
    }
    
}

