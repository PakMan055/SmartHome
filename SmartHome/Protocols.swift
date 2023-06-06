
protocol SmartHomeHub {
    var devices: [SmartDevice] { get }
    mutating func setMode(mode: SmartModes)
}

protocol SmartDevice {
    var status: SmartDeviceStatus { get }
    var isOn: Bool { get }
    var mode: SmartModes { get set }
    mutating func setMode(mode: SmartModes)
}

extension SmartDevice {
    mutating func setMode(mode: SmartModes) {
        self.mode = mode
    }
}
protocol Bulb: SmartDevice {
    var brightness: Brightness { get }
    var color: Color { get }
    var status: SmartDeviceStatus { get }
}
protocol Termo: SmartDevice {
    var power: Power { get }
    
}
protocol Alarm: SmartDevice {
    var power: Power { get }
}
