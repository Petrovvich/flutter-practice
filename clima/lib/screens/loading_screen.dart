import 'dart:convert';

import 'package:clima/services/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoadingScreenState();
}

const API_KEY = '8b0de9ef6c010c3d80030f61abd75d60';

class _LoadingScreenState extends State<LoadingScreen> {
  final _locationService = Location();
  Point point;

  void getLocation() async {
    await _locationService.getLocation();
    point = _locationService.point;
    getData();
  }

  void getData() async {
    Response response = await get(
        'https://api.openweathermap.org/data/2.5/weather?lat=${point.latitude}&lon=${point.longitude}&appid=$API_KEY');
    if (response.statusCode == 200) {
      String data = response.body;
      var temperature = jsonDecode(data)['main']['temp'];
      var condition = jsonDecode(data)['weather'][0]['id'];
      var cityName = jsonDecode(data)['name'];
      print(
          'temperature $temperature \ncondition $condition \ncityName $cityName');
    } else {
      print('Response code is ${response.statusCode}');
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocation();
          },
          child: Text(
            'Get location',
          ),
        ),
      ),
    );
  }
}
