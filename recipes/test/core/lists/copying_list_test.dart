import 'package:unittest/unittest.dart';


 print(obj) => obj;
 
void main() {

  group("copying a list", () {
    const List<String> vowels1 = const ['A', 'E', 'I', 'O', 'U'];
    var fruits1 = ['orange', 'banana', 'mango'];
    
    group("to a fixed length list", () {
      var vowelsFixed = new List.from(vowels1, growable: false);
      var fruitsFixed = new List.from(fruits1, growable: false);
      
      test("does not allow elements to be added", () {
        expect(() => vowelsFixed.add('Y'), throwsUnsupportedError);
        expect(() => vowelsFixed.add('Y'), throwsUnsupportedError);
      });

      test("allows elements to be modified", () {
        vowelsFixed[0] = 'Y';
        expect(vowelsFixed[0], equals('Y'));
      });
    });
 
    group("to a growable list", () {
      var vowels2 = new List.from(vowels1);
      var fruits2 = new List.from(fruits1);

      test("allows elements to be added", () {
        vowels2.add('Y');
        expect(print(vowels2), equals(['A', 'E', 'I', 'O', 'U', 'Y']));
      });

      test("allows elements to be modified", () {
        vowels2[0] = 'Y';
        expect(print(vowels2[0]), equals('Y'));
      });
    });
  });
  
  group('example using a nested list', () {
    var names = [{'first': 'Reggie', 'last': 'Jackson'}, 
                 {'first': 'Cy', 'last': 'Young'}];
    
    var namesCopy = new List.from(names);
    expect(identical(names, namesCopy), isFalse);

    test('list elements share references', () {
      expect(identical(names.first, namesCopy.first), isTrue);
      names[0]['last'] = 'Jefferson';
      expect(namesCopy[0]['last'], equals('Jefferson'));
    });
    
    test('adding an element is not mirrored', () {
      expect(identical(names, namesCopy), isFalse);
      names.add({'first' : 'Micky', 'last' : 'Mantle'});
      expect(names.length, equals(3));
      expect(namesCopy.length, equals(2));
    });
  });
  
  group("common reference", () {
    var fruits1 = ['orange', 'banana', 'mango'];
    var fruits2 = fruits1;
    fruits1.add('kiwi');
    expect(fruits1, equals(fruits2));
  });
}