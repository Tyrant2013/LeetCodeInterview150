//
//  LC03_Remove_Duplicates.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/19.
//

import Foundation

class RemoveDuplicates {
    /// 1、使用快慢指针
    /// 2、使用LC04_Remove_Duplicates_2文件里的RemoveDuplicates2.process(&nums, 1)
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var k: Int = 0
        for index in 1..<nums.count {
            while nums[index] != nums[k] {
                k += 1
                nums[k] = nums[index]
            }
        }
        return k + 1
    }
}
