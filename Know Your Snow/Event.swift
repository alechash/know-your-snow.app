//
//  Event.swift
//  Know Your Snow
//
//  Created by Jude Wilson on 12/15/21.
//

import SwiftUI

struct Event: View {
    var title: String
    var image: String
    var web: String?
    var instagram: String?
    var tiktok: String?
    var twitter: String?
    var youtube: String?
    var wikipedia: String?
    var about: String?
    
    var body: some View {
        VStack {
            
            List {
                Section {
                    VStack {
                        AsyncImage(
                            url: URL(string: image),
                            content: { image in
                                image
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: .infinity)
                                    .clipped()
                            },
                            placeholder: {
                                VStack {
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        ProgressView()
                                        Spacer()
                                    }
                                    Spacer()
                                }
                            }
                        )
                    }
                    .padding(.vertical, -5)
                    .padding(.horizontal, -20)
                }
                
                Text(about!)
                    .padding(.vertical, 10)
                
                Section(header: Text("Location").fontWeight(.heavy)) {
                    Text("Copper Mountain, Colorado")
                }.headerProminence(.increased)
                
                Section(header: Text("Dates").fontWeight(.heavy)) {
                    Text("Wednesday, December 15 - Sunday, December 19, 2021")
                }.headerProminence(.increased)
                
                Section(header: Text("Participants").fontWeight(.heavy)) {
                    Text("40 Individual Skiers")
                    Text("60 Individual Snowboarders")
                    Text("3 Ski Teams")
                    Text("3 Snowboard Teams")
                }.headerProminence(.increased)
                
                
                Section(header: Text("Find \(title)").fontWeight(.heavy)) {
                    if web != nil {
                        Link(destination: URL(string: web!)!) {
                            HStack {
                                Text("Website")
                                Spacer()
                                Image(systemName: "line.diagonal.arrow")
                            }
                        }
                        
                    }
                    if instagram != nil {
                        
                        Link(destination: URL(string: instagram!)!) {
                            HStack {
                                Text("Instagram")
                                Spacer()
                                Image(systemName: "line.diagonal.arrow")
                            }
                        }
                    }
                    if tiktok != nil {
                        
                        Link(destination: URL(string: tiktok!)!) {
                            HStack {
                                Text("TikTok")
                                Spacer()
                                Image(systemName: "line.diagonal.arrow")
                            }
                        }
                    }
                    if twitter != nil {
                        
                        Link(destination: URL(string: twitter!)!) {
                            HStack {
                                Text("Twitter")
                                Spacer()
                                Image(systemName: "line.diagonal.arrow")
                            }
                        }
                    }
                    if youtube != nil {
                        
                        Link(destination: URL(string: youtube!)!) {
                            HStack {
                                Text("YouTube")
                                Spacer()
                                Image(systemName: "line.diagonal.arrow")
                            }
                        }
                    }
                    if wikipedia != nil {
                        
                        Link(destination: URL(string: wikipedia!)!) {
                            HStack {
                                Text("Wikipedia")
                                Spacer()
                                Image(systemName: "line.diagonal.arrow")
                            }
                        }
                    }
                    
                }.headerProminence(.increased)
            }
            .padding(.top, 10)
            Spacer()
        }
        .navigationTitle(title)
    }
}

struct Event_Previews: PreviewProvider {
    static var previews: some View {
        Event(title: "Dew Tour",
              image: "https://i0.heartyhosting.com/www.dewtour.com/wp-content/uploads/2021/12/top-3-men-ski-pipe-qualifier.jpg?resize=1920%2C1080&ssl=1",
              web: "https://www.dewtour.com/snow/",
              instagram: "https://www.instagram.com/dewtour/",
              tiktok: "https://www.tiktok.com/@dewtour",
              twitter: "https://twitter.com/dewtour",
              youtube: "https://www.youtube.com/dewtour",
              wikipedia: "https://en.wikipedia.org/wiki/Dew_Tour",
              about: "The Dew Tour is an extreme sports circuit organized by the Adventure Sports Group, a subsidiary of American Media, LLC.")
    }
}
