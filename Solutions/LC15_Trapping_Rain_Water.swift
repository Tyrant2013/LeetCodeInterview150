//
//  LC15_Trapping_Rain_Water.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/3/5.
//

import Foundation

class Trapping_Rain_Water_Solution {
    func trap(_ height: [Int]) -> Int {
        guard height.count > 0 else { return 0 }
        
        let n = height.count
        var leftSideMax: [Int] = []
        var rightSideMax: [Int] = Array(repeating: 0, count: n)
        
        leftSideMax.append(height[0])
        rightSideMax[n - 1] = height[n - 1]
        
        for index in 1..<n {
            leftSideMax.append(max(leftSideMax[index - 1], height[index]))
        }
        
        for index in (0..<(n - 1)).reversed() {
            rightSideMax[index] = max(rightSideMax[index + 1], height[index])
        }
        
        var rain: Int = 0
        for index in 0..<n {
            print("left max: \(leftSideMax[index]), right max: \(rightSideMax[index]), height: \(height[index]), rain: \(min(leftSideMax[index], rightSideMax[index]) - height[index])")
            rain += min(leftSideMax[index], rightSideMax[index]) - height[index]
        }
        return rain
    }
    
    func testCase() {
        var nums = [0,1,0,2,1,0,1,3,2,1,2,1]
        print("Input: [" + nums.map({ "\($0)" }).joined(separator: ",") + "]")
        var totalRain = trap(nums)
        print("雨水: ", totalRain)
        
        nums = [0]
        print("Input: [" + nums.map({ "\($0)" }).joined(separator: ",") + "]")
        totalRain = trap(nums)
        print("雨水: ", totalRain)
    }
}
