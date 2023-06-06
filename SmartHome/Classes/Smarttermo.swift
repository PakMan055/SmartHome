//
//  Smarttermo.swift
//  SmartHome
//
//  Created by Roman Pak on 06.06.2023.
//

class SmartTermo: Termo {
    var power: String = ""
    var mode: SmartModes
    var status: SmartDeviceStatus
    var isOn: Bool
    
    init(power: String, mode: SmartModes, status: SmartDeviceStatus, isOn: Bool) {
        self.power = power
        self.mode = mode
        self.status = status
        self.isOn = isOn
    }
}
