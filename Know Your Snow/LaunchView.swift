//
//  LaunchView.swift
//  Know Your Snow
//
//  Created by Jude Wilson on 12/15/21.
//

import SwiftUI

struct LaunchView: View {
    @EnvironmentObject var viewlaunch: ViewLaunch

    var body: some View {
        VStack {
            if viewlaunch.currentPage == "onBoardingView" {
                OnboardingView()
            } else if viewlaunch.currentPage == "ContentView" {
                ContentView()
            }
        }
    }
}

class ViewLaunch: ObservableObject {

    init() {
        if !UserDefaults.standard.bool(forKey: "LaunchBefore") {
                currentPage = "onBoardingView"
        } else {
            currentPage = "ContentView"
        }
    }
    @Published var currentPage: String
}
