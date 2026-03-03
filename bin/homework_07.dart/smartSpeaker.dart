import 'device.dart';
import 'interfaces.dart';
import 'mixins.dart';
class SmartSpeaker extends Device with BatteryPowered implements Adjustable{
  int volume = 0;
  SmartSpeaker(super.name, this.volume);
  
  @override
  void decrease() {
    if (volume - 5 >= 0) {
    volume -= 5;
  } else {
    volume = 0;
  }
  }
  
  @override
  void increase() {
    if (volume + 5 <= 100) {
    volume += 5;
  } else {
    volume = 100;
  }
  }
  
  @override
  void turnOff() {
     print("Speaker $name is OFF");
  }
  
  @override
  void turnOn() {
    print("Speaker $name is ON");
  }
  @override
  void showInfo() {
    super.showInfo();
    print('volume: $volume');
  }
  
}