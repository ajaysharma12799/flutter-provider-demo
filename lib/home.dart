import 'package:flutter/material.dart';
import 'package:flutter_state_managment/model/WeatherInfo.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => WeatherInfo(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Provider"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SpecialHeading(),
              SpecialContent(),
            ],
          ),
        ),
        floatingActionButton: FloatingButton(),
      ),
    );
  }
}

class SpecialHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var weatherInfo = Provider.of<WeatherInfo>(context);
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(weatherInfo.temperatureType),
      ),
    );
  }
}

class SpecialContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Temperature Content"),
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  Color decideColors(WeatherInfo info) {
    return info.temperatureType == "Celsius"
        ? Colors.greenAccent
        : Colors.orangeAccent;
  }

  @override
  Widget build(BuildContext context) {
    var weatherInfo = Provider.of<WeatherInfo>(context);
    return FloatingActionButton(
      backgroundColor: decideColors(weatherInfo),
      onPressed: () {
        String newWeatherType =
            weatherInfo.temperatureType == "Celsius" ? "Farenheit" : "Celsius";
        weatherInfo.temperatureType = newWeatherType;
      },
      child: Icon(
        Icons.add,
      ),
    );
  }
}
