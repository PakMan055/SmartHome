
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
    var brightness: Int { get }
    var color: String { get }
}
protocol Termo: SmartDevice {
    var power: String { get }
}
protocol Alarm: SmartDevice {
    var power: String { get }
    func setPower(_ power: String)
}
