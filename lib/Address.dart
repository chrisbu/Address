library Address;

import 'dart:json';
import 'package:logging/logging.dart';

abstract class AddressBase {
  String surname;
  String forename;
  String address1;
  String address2;

  get fullname => "$forename $surname";
}

log(AddressBase address) {
  new Logger("Address").log(address);
}