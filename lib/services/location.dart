import 'package:geolocator/geolocator.dart';

class Location {
  //properties
  double _latitude;
  double _longitude;
  //method
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      this._latitude = position.latitude;
      this._longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  double get longitude => _longitude;

  double get latitude => _latitude;
}
