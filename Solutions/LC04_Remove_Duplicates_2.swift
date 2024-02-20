//
//  LC04_Remove_Duplicates_2.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/20.
//

import Foundation

class RemoveDuplicates2 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
//        guard !nums.isEmpty else { return 0 }
//        var u: Int = 0
//        for num in nums {
//            if u < 2 || nums[u - 2] != num {
//                nums[u] = num
//                u += 1
//            }
//        }
//        return u
        return process(&nums, k: 2)
    }
    /// 通用解法
    func process(_ nums: inout [Int], k: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        var u: Int = 0
        for num in nums {
            if u < k || nums[u - k] != num {
                nums[u] = num
                u += 1
            }
        }
        return u
    }
}
