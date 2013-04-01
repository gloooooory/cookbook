import 'package:web_ui/web_ui.dart';

@observable
class Person {
  String firstName;
  String lastName;
  String dateOfBirth;
  
  Person(this.firstName, this.lastName, this.dateOfBirth);
}

List<Person> persons;

main() { 
  persons = [new Person('Jon',  'Smith', '1999/09/06'),
             new Person('Ruth',  'Ortiz', '1998/08/11')];
}


