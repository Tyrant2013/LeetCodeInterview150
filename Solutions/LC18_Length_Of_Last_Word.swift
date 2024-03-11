//
//  LC18_Length_Of_Last_Word.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/3/11.
//

import Foundation

class Length_Of_Last_Word_Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var ans = 0
        var cur = 0
        let list = Array(s)
        for (i, c) in list.enumerated() {
            if c == " " {
                if cur != 0 {
                    ans = cur
                }
                cur = 0
            } 
            else {
                cur += 1
                if i == list.count - 1 {
                    return cur
                }
            }
        }
        return ans
    }
    
    func lengthOfLastWord_Swift(_ s: String) -> Int {
        let strArr = s.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: .whitespacesAndNewlines)
        guard !strArr.isEmpty else { return 0 }
        return strArr.last?.count ?? 0
    }
}
