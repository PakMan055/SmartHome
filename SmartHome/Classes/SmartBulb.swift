//
//  SmartBulb.swift
//  SmartHome
//
//  Created by Roman Pak on 06.06.2023.
//

class SmartBulb: Bulb {
    var power: Power
    var brightness: Brightness
    var color: Color
    var mode: SmartModes {
        didSet {
            switch mode {
            case .night:
                print("режим \(Brightness.low.rawValue)")
                
            case .morning:
                power = .medium
            case .security:
                brightness = .high
                color = .red
                status = .alarm
            }
        }
    }
    var status: SmartDeviceStatus
    var isOn: Bool
    func toggle() {
        print("the mode \(status)")
    }
    init(power: Power, brightness: Brightness, color: Color, mode: SmartModes, status: SmartDeviceStatus, isOn: Bool) {
        self.power = power
        self.brightness = brightness
        self.color = color
        self.mode = mode
        self.status = status
        self.isOn = isOn
    }
}

