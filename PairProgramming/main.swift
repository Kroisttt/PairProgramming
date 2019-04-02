//
//  main.swift
//  PairProgramming
//
//  Created by BLU on 2019. 4. 2..
//  Copyright © 2019년 BLU. All rights reserved.
//

import Foundation

//print("\(120)cm to \(120 * 0.01)m")
//print("\(1.86)m to \(Int(1.86 * 100))cm")


func convert(value: String) {
    let number: Double = 100
    var units = value.split(separator: " ")
    if units.count == 1 {
        if value.contains("cm") {
            if let convertedValue = Double(value.replacingOccurrences(of: "cm", with: "", options: .literal, range: nil)) {
                print("\(convertedValue / number)m")
            }
        } else if value.contains("m"){
            if let convertedValue = Double(value.replacingOccurrences(of: "m", with: "", options: .literal, range: nil)) {
                print("\(Int(convertedValue * number))cm")
            }
        } else if value.contains("inch"){
            if let convertedValue = Double(value.replacingOccurrences(of: "inch", with: "", options: .literal, range: nil)) {
                print("\(convertedValue * 2.54)cm")
            }
        }
    } else if units.count == 2 {
        switch units[1] {
        case "cm" : break
        case "inch" : break
        case "m" : break
        default: break
        }
    }
    
}

//let input = readLine()
//convert(value: input ?? "")

var s = "8inch"

convert(value: s)
