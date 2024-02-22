//
//  LC02_Remove_Elements.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/19.
//

import Foundation

class Remove_Elements {
    /// 使用双向指针
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        var last = nums.count - 1
        var hasReplace = false
        for index in nums.indices {
            if nums[index] == val && index <= last {
                while nums[last] == val && index < last {
                    last -= 1
                }
                (nums[index], nums[last]) = (nums[last], nums[index])
                hasReplace = true
            }
        }
        return hasReplace ? last : last + 1
    }
    
    func removeElement2(_ nums: inout [Int], _ val: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        var u: Int = 0
        for num in nums {
            if num != val {
                nums[u] = num
                u += 1
            }
        }
        return u
    }
    
    func removeElement3(_ nums: inout [Int], _ val: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        var u: Int = 0
        for num in nums where num != val {
            nums[u] = num
            u += 1
        }
        return u
    }
    
    func removeElement4(_ nums: inout [Int], _ val: Int) -> Int {
        nums.removeAll(where: { $0 == val })
        return nums.count
    }
}
