//
//  LC05_Majority_Element.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/20.
//

import Foundation

class MajorityElement {
    /// 摩尔投票，题目是保证一定有多数元素
    func majorityElement(_ nums: [Int]) -> Int {
        var (x, vote): (Int, Int) = (0, 0)
        for num in nums {
            if vote == 0 {
                x = num
            }
            vote += (x == num ? 1 : -1)
        }
        return x
    }
    
    /// 不保证有多数元素，则需要再加一个判断
    func majorityElement2(_ nums: [Int]) -> Int {
        var (x, vote): (Int, Int) = (0, 0)
        for num in nums {
            if vote == 0 {
                x = num
            }
            vote += (x == num ? 1 : -1)
        }
        if vote == 0 { return -1 }
        let count = nums.filter({ $0 == x }).count
        if count > nums.count / 2 { return x }
        return -1
    }
}
