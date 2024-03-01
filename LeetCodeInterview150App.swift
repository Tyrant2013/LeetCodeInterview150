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
                    let checker = Gas_Station()
                    checker.canCompleteCircuit([1, 2, 3, 4, 5], [3, 4, 5, 1, 2])
                })
        }
    }
}
