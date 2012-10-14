part of address;

class _Address implements Address {
  String forename;
  String address1;
  String address2;
  
  String get fullname => "$forename $surname";
  
  var _surname = "";
  String get surname => _surname;
  set surname(String value) {
    if (value == null) {
       throw new Exception("null surname is not allowed");
    }
    _surname = value;
  }
  
}
