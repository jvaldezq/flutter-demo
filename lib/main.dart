import 'package:flutter/material.dart';

// Screens
import './screens/login/login.dart';
import './screens/profile/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Demo', initialRoute: '/', routes: {
      '/': (context) => Login(),
      '/profile': (context) => Profile(),
    });
  }
}
