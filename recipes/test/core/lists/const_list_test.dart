import 'package:unittest/unittest.dart';

void main() {
  
  // const List<List<String>> chars = const [['A', 'E', 'I', 'O', 'U'], ['R', 'G', 'B']];
  
  const List<String> vowels = const ['A', 'E', 'I', 'O', 'U'];
  const List<String> rgb = const ['R', 'G', 'B'];
  const List<List<String>> chars = const [vowels, rgb];
  
  const List<List<String>> data = const [vowels, rgb];
  
  group('creating const lists', () {
    const List<String> vowels = const ['A', 'E', 'I', 'O', 'U'];

    test("size cannot be changed", () {
      expect(() => vowels.add('Y'), throwsUnsupportedError);
    });
    
    test("content cannot be changed", () {
      expect(() => vowels[0] = 'a', throwsUnsupportedError);     
    });
    
    test("canonicalized", () {
      const List<String> colors = const ['R', 'G', 'B'];    
      const List<String> rgb = const ['R', 'G', 'B']; 
      
      expect(colors == rgb, isTrue);
      expect(identical(colors, rgb), isTrue);
      expect(colors.hashCode == rgb.hashCode, isTrue);
    });
  });
}



