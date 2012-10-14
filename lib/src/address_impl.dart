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
    return map;
  }
  
  toString() => "Address of $fullname"; 
  
  _Address() {}
  
  _Address.fromJson(String json) {
    var map = JSON.parse(json);
    this.surname = map["surname"];
    this.forename = map["forename"];
    this.address1 = map["address1"];
    this.address2 = map["address2"];
  }
  
}
