//
//  ContentView.swift
//  Kalkulator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    @State var val1: Int = 0
    @State var val2: Int = 0
    @State var firstVal: Bool = true
    var body: some View {
        VStack {
            
            Text(text)
        }
        .padding()
        HStack{
            ForEach(0..<3, id: \.self){ index in
                ButtonView(name: String(index), text: $text, val1:$val1, val2: $val2, firstVal: $firstVal)}
        }
        
        Button("SUMA"){
            text = String(Calculation().addTwoNumbers(of: val1, with: val2))
        }
        
    }
}

#Preview {
    ContentView()
}
