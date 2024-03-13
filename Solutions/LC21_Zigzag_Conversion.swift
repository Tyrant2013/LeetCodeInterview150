//
//  LC21_Zigzag_Conversion.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/3/13.
//

import Foundation

class Zigzag_Conversion_Solution {
    /// 思路
//    0             0+t                    0+2t                     0+3t
//    1      t-1    1+t            0+2t-1  1+2t            0+3t-1   1+3t
//    2  t-2        2+t  0+2t-2            2+2t  0+3t-2             2+3t
//    3             3+t                    3+2t                     3+3t
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows > 1 else { return s }
        
        let t = numRows * 2 - 2
        var str = ""
        for i in 0..<numRows {
            for j in stride(from: 0, to: s.count - i, by: t) {
                str += String(s[s.index(s.startIndex, offsetBy: i + j)])
                if 0 < i && i < numRows - 1 && j + t  - i < s.count {
                    str += String(s[s.index(s.startIndex, offsetBy: j + t - i)])
                }
            }
        }
        
        return str
    }
    
    // 思路：
    // 1、首先，需要一个数组来存储每一行的字符串
    // 2、然后，按照Z字型遍历整个字符串
    // 3、接着，遍历过程中，需要一个变量控制当前字符应该添加到哪一行（哪个字符串中），以及方向（向上/向下）
    // 4、最后，将数组join，拼接下面所有的字符串
    // 5、以示例1为例。数组内 应该有三个字符串："PAHN" , "APLSIIG" , "YIR"
    func convert1(_ s: String, _ numRows: Int) -> String {
            // 首先判断边界
            if  numRows <= 1 || s.count <= numRows {
                return s
            }

            // 创建一个数组来存放变换后，每一行字符串
            var result = [String](repeating: "", count: numRows)
            var goDown = false //是否要向下操作下一行字符串
            var currentRow = 0 //当前操作的行数

            for char in s {
                result[currentRow].append(char)

                if currentRow == 0 || currentRow == numRows-1 {
                    goDown = !goDown //到头后折返
                }

                currentRow += (goDown ? 1 : -1)
            }

            return result.joined()

        }
    
    func testCases() {
        print(convert("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR")
    }
}
