//
//  ContentView.swift
//  WorldRouter
//
//  Created by Yusif Ahmadov on 21.08.23.
//

import SwiftUI

struct ContentView: View {
    @State var fahrenheitValue : String = ""
    
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
            TextField("value",text: $fahrenheitValue).font(Font.system(size: 64)).multilineTextAlignment(.center).keyboardType(.decimalPad)
            
            Text("fahrenheit")
            Text("is actually").foregroundColor(.teal)
            Text(convertToCelcius()).font(Font.system(size: 64))
            Text("degrees Celcius")
            Spacer()
        }
        .padding()
        .font(.title)
        .foregroundColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
