import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const API_KEY = '8b0de9ef6c010c3d80030f61abd75d60';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final _locationService = Location();
  Point point;

  void getLocation() async {
    await _locationService.getLocation();
    point = _locationService.point;
    var networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=${point.latitude}&lon=${point.longitude}&appid=$API_KEY&units=metric');
    var weatherData = await networkHelper.getData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherData,);
    }));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 130.0,
        ),
      ),
    );
  }
}
