import 'device.dart';
class SmartTermostat extends Device {
  int temperature;
  SmartTermostat(super.name, this.temperature);
  @override
  void turnOff() {
  print("Thermostat $name is OFF");
  }

  @override
  void turnOn() {
    print("Thermostat $name is ON");
  }
  
  @override
  void showInfo() {
    super.showInfo();
    print('temperature: $temperature');
  }
}