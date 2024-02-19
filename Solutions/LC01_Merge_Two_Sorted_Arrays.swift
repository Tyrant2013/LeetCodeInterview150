//
//  LC01_Merge_Two_Sorted_Arrays.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/19.
//

import Foundation

class Merge_Two_Sorted_Arrays_Solution {
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
}
