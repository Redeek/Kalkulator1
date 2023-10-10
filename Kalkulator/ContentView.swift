//
//  ContentView.swift
//  Kalkulator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    @State var val1: String = ""
    @State var val2: String = ""
    @State var znak: String = ""
    @State var firstVal: Bool = true
    
    var buttonrow = [
        ["1","2","3"],
        ["4","5","6"],
        ["7","8","9"],
        ["0","+","-"],
        ["*","/","sin"]
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text("Kalkulator")
                .font(.largeTitle)
                Spacer()
            Text(text)
                    .frame(width: 315, height: 60)
                    .border(.black, width: 2)
                    .font(.largeTitle)
            
        }
        
            ForEach(buttonrow, id: \.self){ row in
                HStack{
                    ForEach(row , id: \.self){ symbol in
                        ButtonView(name: String(symbol), text: $text, val1:$val1, val2: $val2, firstVal: $firstVal, znak: $znak)}
                }
            }
        
        Button("Oblicz"){
            
                text = String(Calculation().domath(of: val1, with: val2, znak))
            
            val1 = ""
            val2 = ""
            znak = ""
            firstVal = true
        }
        .frame(width: 315, height: 60)
        .border(.black, width: 2)
        .font(.largeTitle)
        
    }
}

#Preview {
    ContentView()
}
