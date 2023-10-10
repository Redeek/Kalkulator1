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
    @Binding var val1: String
    @Binding var val2: String
    @Binding var firstVal: Bool
    @Binding var znak: String
    var numbers = ["1","2","3","4","5","6","7","8","9","0"]
    var key = ["+","-","*","/"]
    var sinus = "sin"
    var body: some View {
        
        Button(name){
            if(name == sinus){
                text = val1
                znak = sinus
            }else{
                if(firstVal){
                    if(numbers.contains(name)){
                        val1 += name
                        text = val1
                    }
                    else if(key.contains(name)){
                        firstVal.toggle()
                        znak = name
                        text = ""
                    }
                }else if (numbers.contains(name)){
                    val2 += name
                    text = val2
                }
            }
            
            
        }
            .frame(width: 100, height: 60)
            .border(.black, width: 2)
            .font(.largeTitle)
    }
}

