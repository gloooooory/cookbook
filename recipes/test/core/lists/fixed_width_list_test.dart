import 'package:unittest/unittest.dart';

print(obj) => obj;

void main() {
  group('fixed width list', () {
    var fixedList = new List(3);
    var growable = new List();
    
    test("should not be extensible", () {
      expect(() => fixedList.add(2), throwsUnsupportedError);
      expect(() => fixedList.removeLast(), throwsUnsupportedError);
      expect(() => fixedList.length = 10, throwsUnsupportedError);
    });
    
    test("should permit the changing of values", () {
      fixedList[0] = 'red';
      fixedList[1] = 'green';
      fixedList[2] = 'blue';
      expect(print(fixedList), equals(['red', 'green', 'blue']));
    });
    
    test('equality', () {
       var list1 = new List(3);
       var list2 = new List(3);
       var items = ['red', 'green', 'blue']; 
       
       for (var i = 0; i < items.length; i++) {
         list1[i] = items[i];
         list2[i] = items[i];
       }
       
       expect(list1 == list2, isFalse);
       expect(identical(list1, list2), isFalse);
    });
  });
}

