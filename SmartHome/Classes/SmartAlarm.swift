//
//  Alarm.swift
//  SmartHome
//
//  Created by Roman Pak on 06.06.2023.
//

class SmartAlarm: Alarm {
    var status: SmartDeviceStatus
    var isOn: Bool
    var mode: SmartModes {
        didSet {
            switch mode {
                
            case .night:
                print("Состояние сигнализации: \(SmartDeviceStatus.off.rawValue)")
            case .morning:
                print("Состояние сигнализации: \(SmartDeviceStatus.off.rawValue)")
            case .security:
                print("Состояние сигнализации: \(SmartDeviceStatus.on.rawValue)")
            }
        }
    }
    
    init(mode: SmartModes, status: SmartDeviceStatus, isOn: Bool) {
        self.mode = mode
        self.status = status
        self.isOn = isOn
    }
}
