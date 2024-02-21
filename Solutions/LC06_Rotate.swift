//
//  LC06_Rotate.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/21.
//

import Foundation

class Rotate {
    /// 翻转
    func rotate(_ nums: inout [Int], _ k: Int) {
        let kk = k % nums.count
        nums.reverse()
        var front = nums.dropLast(nums.count - kk)
        front.reverse()
        var last = nums.dropFirst(kk)
        last.reverse()
        let newArray = front + last
        for index in 0..<nums.count {
            nums[index] = newArray[index]
        }
    }
    
    /// 用时超了
    func rotate1(_ nums: inout [Int], _ k: Int) {
        guard !nums.isEmpty else { return }
        let kk = k % nums.count
        var loop = 0
        while loop < kk {
            for index in (1..<nums.count).reversed() {
                nums.swapAt(index, index - 1)
            }
            loop += 1
        }
    }
}
