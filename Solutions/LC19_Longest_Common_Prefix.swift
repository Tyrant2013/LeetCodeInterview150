//
//  LC19_Longest_Common_Prefix.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/3/11.
//

import Foundation

class Longest_Common_Prefix_Solution {
    
    /// 通过假设第一个字符串为最长前缀，比较后数组除第一个外的所有字符串，检查是否有含有前缀，没有则移除最后一个字母，再循环，一直到查找到一个所有字符串都包含的前缀
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else { return "" }
        
        var prefix = strs[0]
        for i in 1..<strs.count {
            while !strs[i].hasPrefix(prefix) {
                prefix.removeLast()
                if prefix == "" {
                    return ""
                }
            }
        }
        return prefix
    }
    
    func longestCommonPrefix_(_ strs: [String]) -> String {
        guard !strs.isEmpty else { return "" }
        guard strs[0].first != nil else { return "" }
        
        var prefix = ""
        
        
        var index = 0
        var checkCh: Character = strs[0].first!
        while true {
            for str in strs {
                if str.count <= index { return prefix }
                if str[str.index(str.startIndex, offsetBy: index)] != checkCh {
                    return prefix
                }
            }
            prefix += String(checkCh)
            index += 1
            if index >= strs[0].count { return prefix }
            checkCh = strs[0][strs[0].index(strs[0].startIndex, offsetBy: index)]
        }
        return prefix
    }
    
    func testCases() {
        print(longestCommonPrefix(["flower","flow","flight"]))
        print(longestCommonPrefix(["dog","racecar","car"]))
        print(longestCommonPrefix([""]))
    }
}
