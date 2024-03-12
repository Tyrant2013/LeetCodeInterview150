//
//  LC20_Reverse_Words_In_A_String.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/3/12.
//

import Foundation

class Reverse_Words_In_A_String_Solution {
    func reverseWords(_ s: String) -> String {
//        s.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: " ").reversed().joined(separator: " ")
        var word = ""
        var rets: [String] = []
        for ch in s {
            if ch == " " && word.isEmpty {
                continue
            }
            if !word.isEmpty && ch == " " {
                rets.append(word)
                word = ""
                continue
            }
            word += String(ch)
        }
        if !word.isEmpty {
            rets.append(word)
        }
        return rets.reversed().joined(separator: " ")
    }
    
    func testCases() {
        print(reverseWords("the sky is blue"))
        print(reverseWords("  hello world  "))
        print(reverseWords("a good   example"))
    }
}
