//
//  main.swift
//  SmartHome
//
//  Created by Roman Pak on 01.06.2023.
//

import Foundation



var smartBulb = SmartBulb(power: .low, brightness: .medium, color: .yellow, mode: .night, status: .on, isOn: true)
//var smartTermo = SmartTermo(power: <#String#>, mode: .night, status: .off, isOn: true)

smartBulb.setMode(mode: .night)
//smartTermo.setMode(mode: .night)

//print(smartBulb.mode)
//print(smartTermo.mode)

//var smartHome = SmartHome(devices: [smartBulb, SmartTermo])
//print(smartBulb.brightness)
//print(smartBulb.color)

smartBulb.setMode(mode: .night)

