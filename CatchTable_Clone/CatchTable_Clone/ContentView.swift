//
//  ContentView.swift
//  CatchTable_Clone
//
//  Created by 이영준 on 2022/06/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem{
                    Image(systemName: "house")
                }
            
            MyDiningView()
                .tabItem{
                    Image(systemName: "calendar")
                }
        }
        .onAppear{
            UITabBar.appearance().barTintColor = .white
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
