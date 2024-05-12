

import 'person.dart';

class User  with Person {
  String name="Nguyen van a";
  int id=1;

  User(this.name, this.id) ;

@override
  void GetAge() {
  print('18');
}

void printtoscreen()
  {
    GetAge();
    GetName();
  }






}