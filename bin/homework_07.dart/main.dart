import 'smartLamp.dart';
import 'smartSpeaker.dart';
import 'smartThermostat.dart';
import 'device.dart';
import 'interfaces.dart';
import 'mixins.dart';
 void main(){
  List <Device> devices=[SmartLamp("Lamp1", 82), SmartSpeaker('Speaker1', 44), SmartTermostat('Termostat1', 22)];
   for (var device in devices) {

    device.showInfo();   // полиморфизм
    device.turnOn();     // вызывается версия конкретного класса

    if (device is Adjustable) {
      device.increase();
    }

    if (device is BatteryPowered) {
      device.showBattery();
    }
  }

  print('All devices processed.');
 }