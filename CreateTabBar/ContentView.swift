//
//  ContentView.swift
//  CreateTabBar
//
//  Created by Leng Mouyngech on 1/6/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: Hiding Native One
    init(){
        UITabBar.appearance().isHidden = true
    }
    @State var currentTab: Tab = .bookmark
    var body: some View {
        VStack(spacing: 0){
            TabView(selection: $currentTab){
                // MARK: Need to Apply BG For Each Tab View
                Text("Bookmark")
                    .applyBG()
                    .tag(Tab.bookmark)
                Text("Time")
                    .applyBG()
                    .tag(Tab.time)
                Text("Camera")
                    .applyBG()
                    .tag(Tab.camera)
                Text("Chat")
                    .applyBG()
                    .tag(Tab.chat)
                Text("Settings")
                    .applyBG()
                    .tag(Tab.settings)
            }
            // MARK: Custom to Bar
            CustomTabBar(currentTab: $currentTab)
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View{
    func applyBG()-> some View{
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Color("BG")
            )
    }
}
