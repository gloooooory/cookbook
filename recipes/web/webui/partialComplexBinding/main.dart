import 'package:web_ui/web_ui.dart';

class User {
  
  @observable
  String username;

  String email;
  
  @observable
  String tagline;
  
  User(this.username, this.email, this.tagline);
}
  
User user;

void main() {
  user = new User(
    'dartisan12', 
    'dartisan12@dartisans.com',
    'Knowing all there is to know about Dart'
  );  
}