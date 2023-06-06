//
//  Modes.swift
//  SmartHome
//
//  Created by Roman Pak on 02.06.2023.
//

import Foundation

enum Modes {
    case security(SmartDevices: SmartDevices)
    case morning(SmartDevices: SmartDevices)
    case night(SmartDevices: SmartDevices)
}


