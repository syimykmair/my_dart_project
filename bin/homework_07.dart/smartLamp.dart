import 'device.dart';
import 'interfaces.dart';
import 'mixins.dart';
class SmartLamp extends Device with BatteryPowered implements Adjustable{
  int brightnes= 100;
  SmartLamp(super.name,this.brightnes);
  @override
  void decrease() {
     if (brightnes - 10 >= 0) {
      brightnes -= 10;
    } else {
      brightnes = 0;
    }
  }
  
  @override
  void increase() {
     if (brightnes + 10 <= 100) {
      brightnes += 10;
    } else {
      brightnes = 100;
    }
  }
  
  @override
  void turnOff() {
     print("Lamp $name is OFF");
  }
  
  @override
  void turnOn() {
    print("Lamp $name is ON");
  }
  
  @override
  void showInfo() {
    super.showInfo();
    print("brightness: $brightnes");
  }
}