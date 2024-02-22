//
//  LC07_Max_Profit2.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/22.
//

import Foundation

class MaxProfit2 {
    /// 贪心算法
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        var maxValue = 0
        for index in 1..<prices.count {
            maxValue += max(prices[index] - prices[index - 1], 0)
        }
        return maxValue
    }
}
