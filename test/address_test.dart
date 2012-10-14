import 'package:unittest/unittest.dart';
import '../lib/address.dart';
import 'dart:json';

main() {
  test('create', () {
    var addr = new Address();
    expect(addr, isNotNull);
  });
  
  test('surname', () {
    var addr = new Address();
    addr.surname = 'sname';
    expect(addr.surname, equals('sname'));    
  });
  
  test('fullname', () {
    var addr = new Address();
    addr.surname = "sname";
    addr.forename = "fname";
    expect(addr.fullname, equals('fname sname'));
  });
  
  test('tofromJson', () {
    var addr = new Address();
    addr.surname = "sname";
    addr.forename = "fname";
    var json = addr.toJson();
    var jsonString = JSON.stringify(json);
    var addr2 = new Address.fromJson(jsonString);
    expect(addr.surname, equals(addr2.surname));
    expect(addr.forename, equals(addr2.forename));
  });
}