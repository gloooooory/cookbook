import 'package:web_ui/web_ui.dart';

@observable
class Person {
  String firstName;
  String lastName;
  String dateOfBirth;
  
  Person(this.firstName, this.lastName, this.dateOfBirth);
}

Person person;

main() { 
  person = new Person('Jon',  'Smith', '1999/09/06');
}


