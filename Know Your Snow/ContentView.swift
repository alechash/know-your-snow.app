//
//  ContentView.swift
//  Know Your Snow
//
//  Created by Jude Wilson on 12/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(1)
            Text("photo")
                .tabItem {
                    Image(systemName: "photo")
                    Text("Resorts")
                }.tag(2)
            Text("map")
                .tabItem {
                    Image(systemName: "map")
                    Text("Maps")
                }.tag(3)
            Text("reports")
                .tabItem {
                    Image(systemName: "cloud.snow")
                    Text("Reports")
                }.tag(3)
            Events()
                .tabItem {
                    Image(systemName: "flag.2.crossed.fill")
                    Text("Events")
                }.tag(4)
        }
    }
}
