import 'package:web_ui/web_ui.dart';
import 'dart:async';


var person;

main() { 
  person = toObservable({
    'firstName': 'Jon',  
    'lastName': 'Smith',
    
    'address' : toObservable({
      'street': '1122 Main Street', 
      'city': 'Philadelphia', 
      'state': 'PA', 
      'zip': '19103'
    })
  });
}




