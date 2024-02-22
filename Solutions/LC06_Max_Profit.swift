//
//  LC06_Max_Profit.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/22.
//

import Foundation

class Max_Profit {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        var profit = 0
        var buy = prices[0]
        for index in 1..<prices.count {
            if prices[index] < buy {
                buy = prices[index]
            }
            var tmpProfit = prices[index] - buy
            profit = tmpProfit > profit ? tmpProfit : profit
        }
        return profit
    }
}
