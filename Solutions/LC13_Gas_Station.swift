//
//  LC13_Gas_Station.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/3/1.
//

import Foundation

class Gas_Station {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        let n = gas.count
        var index = 0
        while index < n {
            var j = index
            var remain = gas[index]
            while remain - cost[j] >= 0 {
                remain = remain - cost[j] + gas[(j + 1) % n]
                j = (j + 1) % n
                if j == index { return index }
            }
            
            if j < index { return -1 }
            index = j
            
            index += 1
        }
        return -1
    }
}
