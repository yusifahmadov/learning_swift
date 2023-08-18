//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by Yusif Ahmadov on 17.08.23.
//

import SwiftUI

struct ContentView: View {
    
   @State var isEnglish : Bool = false
    
    var body: some View {
        VStack{
            Text(isEnglish ? "Hello World" : "Salam Dunya")
            Button(action:{
                self.isEnglish.toggle()
            }, label: {
                Text("Salam")
            })
        }
        .font(.title)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
