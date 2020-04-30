import 'package:contacts_service/contacts_service.dart';
import 'package:demo/utils/permissions.dart';

import 'package:flutter/material.dart';

import './locations.dart';

class Contacts extends StatelessWidget {
  Contacts() {
    CheckContactsPermissions();
    GetContacts();
    GetLocation();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('This is a test');
  }
}

Future<bool> GetContacts() async {
  // Get all contacts on device
  Iterable<Contact> contacts = await ContactsService.getContacts();

  contacts.forEach((contact) {
    print("${contact.displayName}");
    print("${contact.givenName}");
    print("${contact.middleName}");
    print("${contact.prefix}");
    print("${contact.suffix}");
    print("${contact.familyName}");
  });
// // Get all contacts without thumbnail (faster)
//   Iterable<Contact> contacts =
//       await ContactsService.getContacts(withThumbnails: false);

// // Android only: Get thumbnail for an avatar afterwards (only necessary if `withThumbnails: false` is used)
//   Uint8List avatar = await ContactsService.getAvatar(contact);

// // Get contacts matching a string
//   Iterable<Contact> johns = await ContactsService.getContacts(query: "john");

// // Add a contact
// // The contact must have a firstName / lastName to be successfully added
//   await ContactsService.addContact(newContact);

// // Delete a contact
// // The contact must have a valid identifier
//   await ContactsService.deleteContact(contact);

// // Update a contact
// // The contact must have a valid identifier
//   await ContactsService.updateContact(contact);
}
