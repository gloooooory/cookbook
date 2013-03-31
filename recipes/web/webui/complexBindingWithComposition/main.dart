import 'package:web_ui/web_ui.dart';

@observable
class Person {
  String firstName;
  String lastName;
  String dateOfBirth;
  Passport passport;
  
  Person(this.firstName, this.lastName, this.dateOfBirth, this.passport);
}

@observable
class Passport {
  String number, dateIssued, placeIssued, expiresOn;
  Passport(this.number, this.dateIssued, this.placeIssued, this.expiresOn);
}

Person person;

main() { 
  person = new Person('Jon',  'Smith', '1999/09/06',
      new Passport('RN4455009', '2012/11/08', 'New York, NY', '2022/11/08'));
}


