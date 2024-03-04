//
//  LC14_Candy.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/3/2.
//

import Foundation

class Candy {
    func candy(_ ratings: [Int]) -> Int {
        let n = ratings.count
        var left: [Int] = Array(repeating: 1, count: n)
        
        for index in 0..<n {
            if index > 0 && ratings[index] > ratings[index - 1] {
                left[index] = left[index - 1] + 1;
            }
        }
        
        var right = 0, ret = 0
        for index in (0...(n - 1)).reversed() {
            if index < n - 1 && ratings[index] > ratings[index + 1] {
                right += 1
            }
            else {
                right = 1
            }
            ret += max(left[index], right)
        }
        return ret
    }
}
