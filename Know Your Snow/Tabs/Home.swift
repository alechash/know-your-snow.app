//
//  Home.swift
//  Know Your Snow
//
//  Created by Jude Wilson on 12/15/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 5)
                        .background(LinearGradient(colors: [.pink, .blue],
                                                   startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    List {
                        Section(header: Text("Starred Resorts")
                                    .fontWeight(.heavy)) {
                            Text("Perfect North Slopes")
                            Text("Snow Shoe")
                            Text("Mad River Resort")
                            Text("Vail Colorado")
                        }
                        .headerProminence(.increased)
                        
                        Section(header: Text("Trending Resorts")
                                    .fontWeight(.heavy)) {
                            Text("Perfect North Slopes")
                            Text("Snow Shoe")
                            Text("Mad River Resort")
                            Text("Vail Colorado")
                        }
                        .headerProminence(.increased)
                    }
                    .padding(.top, 5)
                    Spacer()
                }
                .navigationTitle("Know Your Snow")
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        NavigationLink(destination: LaunchView()) {
                            Image(systemName: "gearshape.2")
                                .foregroundColor(Color.white)
                        }
                    }
                }
                .font(.title2)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
