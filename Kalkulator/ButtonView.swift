//
//  ButtonView.swift
//  Kalkulator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ButtonView: View {
    var name: String
    @Binding var text: String
    @Binding var val1: Int
    @Binding var val2: Int
    @Binding var firstVal: Bool
    var body: some View {
        Button(name){
            text = name
            if(firstVal){
                val1 = Int(name)!
            }else{
                val2 = Int(name)!
            }
            firstVal.toggle()
        }
            .frame(width: 130, height: 60)
            .border(.blue, width: 4)
            .font(.largeTitle)
    }
}
