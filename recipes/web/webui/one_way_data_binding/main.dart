import 'package:web_ui/web_ui.dart';
import 'dart:async';

class Quote {
  String quote, saidBy; 
  Quote(this.quote, this.saidBy);
}

// Create the binding.
@observable 
var quote;
  
void main() {
   List<Quote> quotes = [
     new Quote('This agression will not stand, man.', 'The Dude'),
     new Quote('You are entering a world of pain', 'Walter'),
     new Quote('The rug really tied the room together.', 'The Dude'),
     new Quote('Mark it zero, dude', 'Walter')
     ];
    
   var i = 0;
   quote = quotes[i];
   
   new Timer.periodic(new Duration(milliseconds: 2000), (_) {
     i = (i == quotes.length - 1) ? 0 : i + 1;
     quote = quotes[i];
   });
 }

