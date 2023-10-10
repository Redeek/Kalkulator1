//
//  Calculation.swift
//  Kalkulator
//
//  Created by student on 03/10/2023.
//

import Foundation


struct Calculation{
    func domath(of firstVal:String, with SecondVal:String, _ znak:String) -> String{
        var result: String = ""
        switch(znak){
        case "+": result = String(plus(of: firstVal, with: SecondVal))
            return result
        case "-": result = String(minus(of: firstVal, with: SecondVal))
            return result
        case "/": result = String(div(of: firstVal, with: SecondVal))
            return result
        case "*": result = String(mul(of: firstVal, with: SecondVal))
            return result
        case "sin": result = String(format: "%.2f", sinus(of: firstVal))
            return result
        default:
            return "error"
        }
    }
    
    func plus(of firstVal:String, with SecondVal:String) -> Double{
        return Double(firstVal)! + Double(SecondVal)!;
    }
    
    func minus(of firstVal:String, with SecondVal:String) -> Double{
        return Double(firstVal)! - Double(SecondVal)!;
    }
    
    func div(of firstVal:String, with SecondVal:String) -> String{
        if(Int(SecondVal) != 0){
            return String(Double(firstVal)! / Double(SecondVal)!)
        }else{
            return "Error"
        }
    }
    
    func mul(of firstVal:String, with SecondVal:String) -> Double{
        return Double(firstVal)! * Double(SecondVal)!;
    }
    
    func sinus(of firstVal:String) -> Double{
        return sin(Double(firstVal)!)
        //return Double(Double(firstVal)! * 3.14 / 180);
    }
}
