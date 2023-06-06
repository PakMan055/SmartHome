//
//  SmartBulb.swift
//  SmartHome
//
//  Created by Roman Pak on 06.06.2023.
//

class SmartBulb: Bulb {
    var brightness: Int = 0
    var color: String = ""
    var mode: SmartModes {
        didSet {
            switch mode {
            case .night:
                brightness = 2
                color = "blue"
            case .morning:
                brightness = 0
                color = ""
            case .security:
                brightness = 3
                color = "red"
            }
        }
    }
    var status: SmartDeviceStatus
    var isOn: Bool
    func toggle() {
        print("the mode \(status)")
    }
    init(brightness: Int, color: String, mode: SmartModes, status: SmartDeviceStatus, isOn: Bool) {
        self.brightness = brightness
        self.color = color
        self.mode = mode
        self.status = status
        self.isOn = isOn
    }
}

