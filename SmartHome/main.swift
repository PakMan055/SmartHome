//
//  main.swift
//  SmartHome
//
//  Created by Roman Pak on 01.06.2023.
//

import Foundation



enum SmartModes {
    case night
    case morning
    case security
}

enum SmartDeviceStatus {
    case on
    case off
    case alarm
}




var smartBulb = SmartBulb(brightness: 2, color: "Yellow", mode: .morning, status: .on, isOn: true)
var smartTermo = SmartTermo(power: "On", mode: .security, status: .off, isOn: true)

smartBulb.setMode(mode: .night)
smartTermo.setMode(mode: .night)

print(smartBulb.mode)
//print(smartTermo.mode)




var smartHome = SmartHome(devices: [smartBulb, smartTermo])
print(smartBulb.brightness)
print(smartBulb.color)

smartBulb.setMode(mode: .security)
print(smartBulb.brightness)
print(smartBulb.color)
