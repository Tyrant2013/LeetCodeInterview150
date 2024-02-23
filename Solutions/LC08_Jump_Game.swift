//
//  LC08_Jump_Game.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/23.
//

import Foundation

class Jump_Game {
    func canJump(_ nums: [Int]) -> Bool {
        guard !nums.isEmpty else { return false }
        var maxJump: Int = 0
        for index in 0..<nums.count {
            if index <= maxJump {
                maxJump = max(maxJump, index + nums[index])
                if maxJump >= nums.count - 1 { return true }
            }
        }
        return false
    }
}
