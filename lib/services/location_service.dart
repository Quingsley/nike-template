import 'dart:async';

import 'package:location/location.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nike_app/env/env.dart';

class LocationService {
  final Location _location = Location();

  Future<LocationData?> requsetLocationInfo() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
      if (!serviceEnabled) {
        return null;
      }
    }

    permissionGranted = await _location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }
    locationData = await _location.getLocation();
    return locationData;
  }

  Future<String> getFormattedAddress(int lat, int lng) async {
    try {
      final url = Uri.parse(
          'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=${Env.apiKey}');
      final reqeust = await http.get(url);
      if (reqeust.statusCode != 200) {
        throw Exception('Something went wrong');
      }
      final response = jsonDecode(reqeust.body);
      return response['results'][0]['formatted_address'];
    } catch (error) {
      return error.toString();
    }
  }
}
