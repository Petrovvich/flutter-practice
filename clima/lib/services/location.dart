import 'package:geolocator/geolocator.dart';

class Location {
  Point _point;

  Point get point => _point;

  void getLocation() async {
    try {
      await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low)
          .then((onValue) {
        _point = Point(latitude: onValue.latitude, longitude: onValue.longitude);
      });
    } catch (e) {
      print(e);
    }
    _point = Point(latitude: 37.424386, longitude: -122.083622);
  }
}

class Point {
  final double longitude;
  final double latitude;

  Point({this.latitude, this.longitude});
}
