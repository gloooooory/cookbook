import 'package:web_ui/web_ui.dart';

class Record {
  String name, age, phone, email;
  
  Record(this.name, this.age, this.phone, this.email);
}

var records = [
    new Record('John Doe', '34', '212-555-1234', 'john@jd.com'),
    new Record('Mario Lark', '33', '510-454-4545', 'ml@ml.com'),
    new Record('Paula Ho', '37', '617-555-4321', 'paula@ph.org')
  ];
 
@observable
bool showFullRecord = false;

void main() {}