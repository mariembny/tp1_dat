import 'package:flutter/material.dart';
void main() {
  Contact contact1 = Contact('bny', 'maria', 'rasjebal', 'maria@gmail.com', '+216123456789', '721234567');
  Contact contact2 = Contact.pro('bn', 'maram', 'maram@gmail.com', '+216987654321');
  ListContact contactsList = ListContact();
  contactsList.addContact(contact1);
  contactsList.addContact(contact2);

  print("Liste de contacts :");
  for (var contact in contactsList.listContact) {
    print("Nom complet : ${contact.nameSurname}");
    print("Email : ${contact._email}");
    print("Numéro de mobile : ${contact._mobileTel}");
    print("Numéro de téléphone à domicile : ${contact.homeTel}");
    print("Adresse : ${contact.address}");
    print("-------------------------");
  }

  // Recherche de contacts par nom
  String searchName = 'bny';
  List<Contact> searchResults = contactsList.searchContact(searchName);
  if (searchResults.isNotEmpty) {
    print("Résultats de la recherche pour '$searchName' :");
    for (var contact in searchResults) {
      print("Nom complet : ${contact.nameSurname}");
      print("Email : ${contact._email}");
      print("Numéro de mobile : ${contact._mobileTel}");
      print("Numéro de téléphone à domicile : ${contact.homeTel}");
      print("Adresse : ${contact.address}");
      print("-------------------------");
    }
  } else {
    print("Aucun résultat trouvé pour '$searchName'.");
  }
}

class Contact {
  String name;
  String surname;
  String? address;
  String _email;
  String _mobileTel;
  String? homeTel;

  Contact(this.name, this.surname, this.address, this._email, this._mobileTel, this.homeTel);
Contact.pro(this.name,this.surname,this._email,this._mobileTel);

String get nameSurname => '$name $surname';

  bool _isValidEmail(String email) {
  final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  return emailRegex.hasMatch(email);
}

bool _isValidMobilePhone(String mobilePhone) {
  final phoneRegex = RegExp(r'^\+216\d{10}$');
  return phoneRegex.hasMatch(mobilePhone);
}


bool _isValidHomePhone(String homePhone) {
  final phoneRegex = RegExp(r'^(72|71|75)\d{6}$');
  return phoneRegex.hasMatch(homePhone);
}


  set email(String? email) {
    if (_isValidEmail(_email)) {
      _email = _email;
    } else {
      throw ArgumentError('Email invalide');
    }
  }

  set mobileTel(String? mobileTel) {
    if (_isValidMobilePhone(_mobileTel)) {
      _mobileTel = _mobileTel;
    } else {
      throw ArgumentError('Numéro de mobile invalide');
    }
  }

  set _homeTel(String? homeTel) {
    if (_isValidHomePhone(homeTel)) {
      homeTel = homeTel;
    } else {
      throw ArgumentError('Numéro de téléphone à domicile invalide');
    }
  }
}

class ListContact {
  List<Contact> listContact = [];

  void addContact(Contact contact) {
    listContact.add(contact);
  }

  void deleteContact(Contact contact) {
    listContact.remove(contact);
  }

  List<Contact> searchContact(String contact) {
    return listContact.where((c) => c.nameSurname.contains(contact)).toList();
  }
}
