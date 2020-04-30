import 'package:permission_handler/permission_handler.dart';

Future<bool> CheckContactsPermissions() async {
  var status = await Permission.contacts.status;
  print(status);
  if (status.isUndetermined) {
    // We didn't ask for permission yet.
    print('undetermined');

    if (await Permission.contacts.request().isGranted) {
      // Either the permission was already granted before or the user just granted it.
      print('isGranted');
      return true;
    }

    if (await Permission.locationWhenInUse.serviceStatus.isEnabled) {
      // Use location.
    }

// You can request multiple permissions at once.
    // Map<Permission, PermissionStatus> statuses = await [
    //   Permission.location,
    //   Permission.storage,
    // ].request();
    // print(statuses[Permission.location]);
  }

  return false;
}

Future<bool> CheckLocationsPermissions() async {
  var status = await Permission.location.status;
  print(status);
  if (status.isUndetermined) {
    // We didn't ask for permission yet.
    print('undetermined');

    if (await Permission.location.request().isGranted) {
      // Either the permission was already granted before or the user just granted it.
      print('isGranted');
      return true;
    }

    if (await Permission.locationWhenInUse.serviceStatus.isEnabled) {
      // Use location.
    }

// You can request multiple permissions at once.
    // Map<Permission, PermissionStatus> statuses = await [
    //   Permission.location,
    //   Permission.storage,
    // ].request();
    // print(statuses[Permission.location]);
  }

  return false;
}

Future<bool> CheckHealthPermissions() async {
  var status = await Permission.;
  print(status);
  if (status.isUndetermined) {
    // We didn't ask for permission yet.
    print('undetermined');

    if (await Permission.location.request().isGranted) {
      // Either the permission was already granted before or the user just granted it.
      print('isGranted');
      return true;
    }

    if (await Permission.locationWhenInUse.serviceStatus.isEnabled) {
      // Use location.
    }

// You can request multiple permissions at once.
    // Map<Permission, PermissionStatus> statuses = await [
    //   Permission.location,
    //   Permission.storage,
    // ].request();
    // print(statuses[Permission.location]);
  }

  return false;
}