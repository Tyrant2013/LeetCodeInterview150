//
//  LC16_Roman_To_Integer.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/3/6.
//

import Foundation

class Roman_To_Integer_Solution {
    func romanToInt(_ s: String) -> Int {
        let map: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var result = 0
        var prev = 0
        s.forEach{ c in
            if let v = map[c] {
                result += v <= prev ? prev : -prev
                prev = v
            }
        }
        result += prev
        return result
    }
    
    func romanToInt2(_ s: String) -> Int {
        var num = 0
        var last = ""
        
        s.forEach { ch in
            let cur = String(ch)
            num += toNum(cur)
            if last != "" {
                if last == "I" && (cur == "V" || cur == "X") {
                    num -= toNum(last) * 2
                }
                else if last == "X" && (cur == "L" || cur == "C") {
                    num -= toNum(last) * 2
                }
                else if last == "C" && (cur == "D" || cur == "M") {
                    num -= toNum(last) * 2
                }
            }
            last = cur
        }
        return num
    }
    
    func toNum(_ str: String) -> Int {
        switch str {
        case "I": return 1
        case "V": return 5
        case "X": return 10
        case "L": return 50
        case "C": return 100
        case "D": return 500
        case "M": return 1000
        default: return 0
        }
    }
}
