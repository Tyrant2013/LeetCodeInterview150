//
//  LC10_H_Index.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/27.
//

import Foundation

class H_Index {
    func hIndex(_ citations: [Int]) -> Int {
        guard !citations.isEmpty else { return 0 }
        var left = 0, right = citations.count, mid = 0, counter = 0
        while left < right {
            mid = (left + right + 1) / 2
            counter = 0
            for citation in citations {
                if citation >= mid {
                    counter += 1
                }
            }
            
            if counter >= mid {
                left = mid
            }
            else {
                right = mid - 1
            }
        }
        return left
    }
    
    func hIndex_1(_ citations: [Int]) -> Int {
        let sorted = citations.sorted(by: >)
        var h = 0
        for (index, value) in sorted.enumerated() {
            if value >= index+1 {
                h = index+1
            } else {
                break
            }
        }
        return h
    }
}
