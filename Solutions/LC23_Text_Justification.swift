//
//  LC22_Text_Justification.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/3/15.
//

import Foundation

class Text_Justification_Solution {
    /// 2024/03/15, 击败了100%的用户！！！！！！！
    func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        var rets: [String] = []
        
        var strArray: [String] = []
        var strLength = 0
        let separator = "_"
        for word in words {
            if strLength + strArray.count + word.count <= maxWidth {
                strArray.append(word)
                strLength += word.count
            }
            else {
                let spaceCount = maxWidth - strLength
                let lestSpaceCount = strArray.count > 1 ? spaceCount / (strArray.count - 1) : spaceCount
                var lastSpaceCount = strArray.count > 1 ? spaceCount % (strArray.count - 1) : 0
                var line = ""
                for (numIndex, ww) in strArray.enumerated() {
                    if numIndex == strArray.count - 1 { break }
                    
                    let space = (0..<lestSpaceCount).map({ _ in separator }).joined()
                    line += ww + space
                    if lastSpaceCount > 0 {
                        line += separator
                        lastSpaceCount -= 1
                    }
                }
                line += strArray.last!
                if strArray.count == 1 {
                    line += (0..<lestSpaceCount).map({_ in separator }).joined()
                }
                rets.append(line)

                strArray.removeAll()
                
                strArray.append(word)
                strLength = word.count
            }
        }
        if !strArray.isEmpty {
            let spaceCount = maxWidth - strLength - strArray.count + 1
            
            var line = strArray.joined(separator: separator)
            line += (0..<spaceCount).map({ _ in separator }).joined()
            print(line, line.count, maxWidth, strLength, strArray.count - 1, spaceCount)
            rets.append(line)
        }
        
        print("maxWidth: ", maxWidth)
        rets.forEach({
            print($0, $0.count)
        })
        
        return rets
    }
    
    func testCases() {
//        print(fullJustify(["This", "is", "an", "example", "of", "text", "justification."], 16))
        print(fullJustify(["What","must","be","acknowledgment","shall","be"], 16))
//        print(fullJustify(["Science","is","what","we","understand","well","enough","to","explain","to","a","computer.","Art","is","everything","else","we","do"], 20))
    }
}
