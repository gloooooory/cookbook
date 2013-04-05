import 'dart:async';
import 'dart:io';
import 'package:unittest/unittest.dart';

String withLineNumbers(lines) {
  var lineNumber = 0;
  return lines.map((line) {
    lineNumber += 1;
    return "$lineNumber: $line";
  }).join('\n');
}


void main() {
  test('', () {
    var filename = 'recipes/test/async/example.txt';
    var doTests = expectAsync0(() {
      expect(new File('temp.txt').readAsStringSync(), 
          equals('1: line1\n2: line2\n3: line3')); 
    });
  
    List<String> lines;
    
    new File(filename).readAsLines()
        .then((_lines) {
          lines = _lines;
          File temp = new File('temp.txt');
          return temp.create();
        })
        .then((file) => file.writeAsString(withLineNumbers(lines)))
        .then((file) => doTests());
  }); 
}

