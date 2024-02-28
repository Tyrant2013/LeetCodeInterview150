//
//  LC11_Insert_DeleteGetrandom.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/28.
//

import Foundation

class RandomizedSet {
    var array: [Int] = []
    var arrayIndexs: [Int: Int] = [:]
    
    init() { }
    
    func insert(_ val: Int) -> Bool {
        if arrayIndexs[val] == nil {
            array.append(val)
            arrayIndexs[val] = array.count - 1
            return true
        }
        return false
    }
    
    func remove(_ val: Int) -> Bool {
        /// 把要删除的元素和数据最后一个元素交换位置, 然后更新元素交换后的位置，并删除最后一个元素
        if let index = arrayIndexs[val] {
            let lastIndex = array.count - 1
            let lastVal = array.last!
            array.swapAt(lastIndex, index)
            arrayIndexs[lastVal] = index
            arrayIndexs[val] = nil
            array.removeLast()
            return true
        }
        
        return false
    }
    
    func getRandom() -> Int {
        let index = Int.random(in: 0..<array.count)
        return array[index]
    }
}
