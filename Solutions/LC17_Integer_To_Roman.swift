//
//  LC17_Integer_To_Roman.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/3/7.
//

import Foundation

class Integer_To_Roman_Solution {
    func intToRoman(_ num: Int) -> String {
        var maps: [(Int, String)] = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"), (100, "C"), (90, "XC"), (50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]
        var tmp = num
        var roman = ""
        for item in maps {
            while (tmp >= item.0) {
                tmp -= item.0
                roman += item.1
            }
            if tmp == 0 { break }
        }
        return roman
    }
    
    func testCases() {
        [3, 4, 9, 58, 1994].forEach { num in
            print("输入: \(num), 输出: \(intToRoman(num))")
        }
    }
}
