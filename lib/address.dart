library address;

import 'dart:json';

part 'src/address_impl.dart';

/// Public [Address] abstract class which provides basic functionality
/// to represent an address
abstract class Address {
  String surname;
  String forename;
  String address1;
  String address2;
  /// Returns the [fullname] which is an aggregate of the 
  /// [forename] and the [surname] 
  String get fullname;

  /// Returns a representation of the address object
  String toString(); 
  
  /// Returns a representation of the address object as JSON
  String toJson();
  
  /// Redirecting constructor to the default [Address] implementation
  factory Address() {
    return new _Address(); 
  }
  
  /// Redirecting constructor to the [fromJson] constructor
  factory Address.fromJson(String json) {
    return new _Address.fromJson(json);  
  }
  
}

/// Outputs an [Address] to the console
log(Address address) {
  print(address.toString());
}