import 'package:unittest/unittest.dart';
import '../lib/address.dart';

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
  
  
}