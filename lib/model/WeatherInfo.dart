import 'package:flutter/foundation.dart';

class WeatherInfo with ChangeNotifier {
  String _tempType = "Celsius";
  int _tempValue = 25;

  // Getter For Both Field
  String get temperatureType => _tempType;
  int get temperatureValue => _tempValue;

  // Setter For Both Field
  void set temperatureType(String newValue) {
    this._tempType = newValue;
    notifyListeners();
  }

  void set temperatureValue(int newValue) {
    this._tempValue = newValue;
    notifyListeners();
  }
}
