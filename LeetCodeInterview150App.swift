//
//  LeetCodeInterview150App.swift
//  LeetCodeInterview150
//
//  Created by Xiaowei Zhuang on 2024/2/19.
//

import SwiftUI

@main
struct LeetCodeInterview150App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: {
                    let aa = RandomizedSet()
                    print(aa.insert(0))
//                    print("after insert 0:" + aa.array.map({ "\($0)"}).joined(separator: ","))
                    print(aa.insert(1))
//                    print("after insert 1:" + aa.array.map({ "\($0)"}).joined(separator: ","))
                    print(aa.remove(0))
//                    print("after remove 0:" + aa.array.map({ "\($0)"}).joined(separator: ","))
                    print(aa.insert(2))
//                    print("after insert 2:" + aa.array.map({ "\($0)"}).joined(separator: ","))
                    print(aa.remove(1))
//                    print("after remove 1:" + aa.array.map({ "\($0)"}).joined(separator: ","))
                    print(aa.getRandom())
                })
        }
    }
}
