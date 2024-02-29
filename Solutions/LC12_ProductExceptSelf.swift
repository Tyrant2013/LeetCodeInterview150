//
//  LC12_ProductExceptSelf.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/29.
//

import Foundation

class ProductExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var l: [Int] = [], r: [Int] = Array(repeating: 1, count: nums.count)
        var result: [Int] = []
        l.append(1)
        for index in 1..<nums.count {
            l.append(nums[index - 1] * l[index - 1])
        }
        
//        r[nums.count - 1] = 1
        for index in (0...(nums.count - 2)).reversed() {
            r[index] = nums[index + 1] * r[index + 1]
            print("index: \(index) = " + r.map({ "\($0)" }).joined(separator: ","))
        }
        
        for index in 0..<nums.count {
            result.append(l[index] * r[index])
        }
        
        return result
    }
}
