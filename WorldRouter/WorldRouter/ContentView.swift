//
//  ContentView.swift
//  WorldRouter
//
//  Created by Yusif Ahmadov on 21.08.23.
//

import SwiftUI

struct ContentView: View {
    @State var fahrenheitValue : String = ""
    
    @State var isVisible = false
    
    let numberFormatter : NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter
        
    }()
    
    func convertToCelcius() -> String{
        
        if let value = Double(fahrenheitValue){
            let fahrenheit = Measurement<UnitTemperature>(value:value,unit:.fahrenheit)
            
           let celciusValue = fahrenheit.converted(to: .celsius)
            
            return  numberFormatter.string(from: NSNumber(value: celciusValue.value)) ?? "???"
             
        }else{
            return "???"
        }
        
        
    }
    
    var body: some View {
        VStack {
            TextField("CONVERSION_TEXT_FIELD_PLACEHOLDER",text: $fahrenheitValue).font(Font.system(size: 64)).multilineTextAlignment(.center).keyboardType(.decimalPad)
            
            Text("CONVERSION_FAHREINHEIT")
            Text("CONVERSION_IS_ACTUALLY").foregroundColor(.teal)
            Text(convertToCelcius()).font(Font.system(size: 64))
            Text("CONVERSION_DEGREES_CELCIUS")
            Spacer()
        }
        .padding()
        .font(.title)
        .foregroundColor(.blue)
        
        .opacity(isVisible ? 1.0 : 0.0)
        .offset(x: isVisible ? 0 : 100, y: isVisible ? 0 : 20)
        .animation(.easeIn(duration: 1))
        .onAppear{
            self.isVisible = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
