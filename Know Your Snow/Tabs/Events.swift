//
//  Events.swift
//  Know Your Snow
//
//  Created by Jude Wilson on 12/15/21.
//

import SwiftUI

struct Events: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Top Events")
                                .fontWeight(.heavy)) {
                        
                        NavigationLink("Dew Tour 2021", destination: Event(title: "Dew Tour 2021",
                                                                           image: "https://i0.heartyhosting.com/www.dewtour.com/wp-content/uploads/2021/12/top-3-men-ski-pipe-qualifier.jpg?resize=1920%2C1080&ssl=1",
                                                                           web: "https://www.dewtour.com/snow/",
                                                                           instagram: "https://www.instagram.com/dewtour/",
                                                                           tiktok: "https://www.tiktok.com/@dewtour",
                                                                           twitter: "https://twitter.com/dewtour",
                                                                           youtube: "https://www.youtube.com/dewtour",
                                                                           wikipedia: "https://en.wikipedia.org/wiki/Dew_Tour",
                                                                           about: "The Dew Tour is an extreme sports circuit organized by the Adventure Sports Group, a subsidiary of American Media, LLC."))
                        
                        Link("Dew Tour", destination: URL(string: "https://www.dewtour.com/snow/")!)
                        Text("X Games 2021 Aspen")
                    }
                                .headerProminence(.increased)
                }
            }
            .navigationTitle("Events")
        }
    }
}

struct Events_Previews: PreviewProvider {
    static var previews: some View {
        Events()
    }
}
