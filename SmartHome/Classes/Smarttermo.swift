//
//  Smarttermo.swift
//  SmartHome
//
//  Created by Roman Pak on 06.06.2023.
//

class SmartTermo: Termo {
    var temperature: Temperature
    var mode: SmartModes {
        didSet {
            switch mode {
                
            case .night:
                print("Состояние терморегулятора: \(SmartDeviceStatus.on.rawValue), Мощность \(Temperature.medium.rawValue)")
            case .morning:
                print("Состояние терморегулятора: \(SmartDeviceStatus.on.rawValue), Мощность \(Temperature.high.rawValue)")
            case .security:
                print("Состояние терморегулятора: \(SmartDeviceStatus.off.rawValue)")
            }
        }
    }
    var status: SmartDeviceStatus
    var isOn: Bool
    
    init(temperature: Temperature, mode: SmartModes, status: SmartDeviceStatus, isOn: Bool) {
        self.temperature = temperature
        self.mode = mode
        self.status = status
        self.isOn = isOn
    }
}
