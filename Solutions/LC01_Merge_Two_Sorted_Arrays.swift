//
//  LC01_Merge_Two_Sorted_Arrays.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/19.
//

import Foundation

class Merge_Two_Sorted_Arrays_Solution {
    /// 从nums1最后的位置向前
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var indexOne = m - 1
        var indexTwo = n - 1
        var last = m + n - 1
        var curValue: Int = 0
        while indexOne >= 0 || indexTwo >= 0 {
            if indexOne == -1 {
                curValue = nums2[indexTwo]
                indexTwo -= 1
            }
            else if indexTwo == -1 {
                curValue = nums1[indexOne]
                indexOne -= 1
            }
            else if nums1[indexOne] > nums2[indexTwo] {
                curValue = nums1[indexOne]
                indexOne -= 1
            }
            else {
                curValue = nums2[indexTwo]
                indexTwo -= 1
            }
            nums1[last] = curValue
            last -= 1
        }
    }
    
//    func testCases() {
//        var nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
//        var result = [1,2,2,3,5,6]
//        print("输入:")
//        print("nums1: [" + nums1.map({ "\($0)" }).joined(separator: ",") + "], m: \(m)" + ", nums2: [" + nums2.map({ "\($0)" }).joined(separator: ",") + "], n: \(n)")
//        merge(&nums1, m, nums2, n)
//        print("输出: ")
//        print(nums1.map({ "\($0)" }).joined(separator: ","))
//        print("结果: ")
//        print(result == nums1 ? "Success" : "Failed")
//    }
}
