//
//  WorldRouterApp.swift
//  WorldRouter
//
//  Created by Yusif Ahmadov on 21.08.23.
//

import SwiftUI

@main
struct WorldRouterApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem{
                        HStack{
                            Image(systemName: "thermometer")
                            Text("TAB_CONVERSION")
                            
                        }
                    }
                MapView().tabItem{
                    HStack{
                        Image(systemName: "map")
                        Text("TAB_MAP")
                        
                    }
                }
            }.accentColor(.purple)
            
        }
    }
}
