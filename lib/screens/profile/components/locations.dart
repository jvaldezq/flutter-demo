import 'package:location/location.dart';
import 'package:demo/utils/permissions.dart';

Future<bool> GetLocation() async {
  Location location = new Location();
  LocationData _locationData;

  CheckLocationsPermissions();
  _locationData = await location.getLocation();
  print(_locationData);
}
