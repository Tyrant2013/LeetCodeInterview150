//
//  LC09_Jump_Game2.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/26.
//

import Foundation

class Jump_Game2 {
    func jump(_ nums: [Int]) -> Int {
        var step = 0
        var end = 0
        var maxPos = 0 // 当前能到达的最远位置
        for index in 0..<(nums.count - 1) {
            maxPos = max(nums[index] + index, maxPos)
            
            if index == end { // 是否已经到达上次最远位置
                end = maxPos // 把当前最远位置定为下次跳跃的最远位置
                step += 1 // 步数加一
            }
        }
        return step
    }
}
