//
//  Enums.swift
//  SmartHome
//
//  Created by Roman Pak on 06.06.2023.
//

enum SmartModes {
    case night
    case morning
    case security
}

enum SmartDeviceStatus: String {
    case on = "включено"
    case off = "выключено"
}

enum Color: String {
    case yellow = "желтый"
    case red = "красный"
    case blue = "голубой"
}
enum Brightness: String {
    case low = "низкая"
    case medium = "средняя"
    case high = "высокая"
}
enum Temperature: String {
case low = "низкая"
case medium = "средняя"
case high = "высокая"
}
