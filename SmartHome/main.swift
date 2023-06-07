//
//  main.swift
//  SmartHome
//
//  Created by Roman Pak on 01.06.2023.
//

import Foundation



var smartBulb = SmartBulb(brightness: .medium, color: .yellow, mode: .night, status: .on, isOn: true)
var smartTermo = SmartTermo(temperature: .medium, mode: .night, status: .off, isOn: true)
var smartAlarm = SmartAlarm(mode: .night, status: .on, isOn: true)
//smartTermo.setMode(mode: .night)

//print(smartBulb.mode)
//print(smartTermo.mode)

var smartHome = SmartHome(devices: [smartBulb, smartTermo, smartAlarm])
//print(smartBulb.brightness)
//print(smartBulb.color)

smartBulb.setMode(mode: .night)
smartTermo.setMode(mode: .night)
smartAlarm.setMode(mode: .night)
