import 'package:unittest/unittest.dart';

print(obj) => obj;

void main() {
  group('assign literal', () {
    test("using List.filled()", () {
      var filledList = new List<bool>.filled(3, false);
      expect(print(filledList), equals([false, false, false]));
      expect(() => filledList.add(true), throwsUnsupportedError);
    });
    
    test("using List.generate()", () {
      var filledList = new List<bool>.generate(3, (_) => false);
      expect(print(filledList), equals([false, false, false]));
      filledList.add(true);
      expect(print(filledList), [false, false, false, true]);
      
      var fixedAndFilled = new List<bool>.generate(3, (_) => false, growable: false);
      expect(() => fixedAndFilled.add(true), throwsUnsupportedError);
    });
    
    test("using generate", () {
      List<List<int>> grid = new List.generate(3, (x) => [x, x + 1, x + 2]);
      expect(print(grid), equals([[0, 1, 2], [1, 2, 3], [2, 3, 4]]));
    });
  });
}