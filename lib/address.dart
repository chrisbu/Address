library address;

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
  String toString() => "Address for $fullname"; 
  
  /// Redirecting constructor to the default [Address] implementation
  factory Address() {
    return new _Address(); 
  }
  
}

/// Outputs an [Address] to the console
log(Address address) {
  print(address.toString());
}