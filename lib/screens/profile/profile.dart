import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import './components/contacts.dart';
import './components/health.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PROFILE DEMO'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              // scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Next page',
            onPressed: () {
              // openPage(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Healthy(),
        ),
      ),
    );
  }
}
