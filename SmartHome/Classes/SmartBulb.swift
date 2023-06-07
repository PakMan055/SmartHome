//
//  SmartBulb.swift
//  SmartHome
//
//  Created by Roman Pak on 06.06.2023.
//

class SmartBulb: Bulb {
    
    var brightness: Brightness
    var color: Color
    var mode: SmartModes {
        didSet {
            switch mode {
            case .night:
                print("Освещение \(SmartDeviceStatus.on.rawValue), Яркость \(Brightness.low.rawValue), Цвет \(Color.blue.rawValue)")
                
            case .morning:
                print("Освещение \(SmartDeviceStatus.off.rawValue)")
            case .security:
                brightness = .high
                color = .red
                status = .on
            }
        }
    }
    var status: SmartDeviceStatus
    var isOn: Bool
//    func toggle() {
//        print("the mode \(status)")
//    }
    init(brightness: Brightness, color: Color, mode: SmartModes, status: SmartDeviceStatus, isOn: Bool) {
        self.brightness = brightness
        self.color = color
        self.mode = mode
        self.status = status
        self.isOn = isOn
    }
}

