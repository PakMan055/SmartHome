//
//  main.swift
//  SmartHome
//
//  Created by Roman Pak on 01.06.2023.
//

import Foundation

var greeting = "Какой режим желаете включить?"
var chooseMode: Bool = true

var smartBulb = SmartBulb(brightness: .medium, color: .yellow, mode: .night, status: .on, isOn: true)
var smartTermo = SmartTermo(temperature: .medium, mode: .night, status: .off, isOn: true)
var smartAlarm = SmartAlarm(mode: .night, status: .on, isOn: true)
var smartHome = SmartHome(devices: [smartBulb, smartTermo, smartAlarm])

while chooseMode {
    print(greeting)
    print("Доступные режимы: ")
    for mode in SmartModes.allCases {
        print(mode.rawValue)
    }
    
    if let answer = readLine()?
        .lowercased()
        .trimmingCharacters(in: .whitespacesAndNewlines),
       let mode = SmartModes(rawValue: answer) {
        smartHome.setMode(mode: mode)
    } else {
        print("Неизвестный режим")
    }
//    var morningMode = SmartModes()
//    if let answer = morningMode {
//        print("\(smartHome.devices)")
//    }
}

