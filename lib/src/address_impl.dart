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
  
  toJson() {
    var map = {};
    map["surname"] = surname;
    map["forename"] = forename;
    map["address1"] = address1;
    map["address2"] = address2;
    return JSON.stringify(map);
  }
  
  toString() => "Address of $fullname"; 
  
}
