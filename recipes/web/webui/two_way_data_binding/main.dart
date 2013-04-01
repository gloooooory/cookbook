import 'package:web_ui/web_ui.dart';

var fact = 'Dart is fun!';

@observable
String str;
    
void reset() {
  str = fact;
}
    
main() {
  str = fact;
}

