import 'dart:io';
/*
class Book
{
   late  String _name;
   late   int gia;
    late int namXB;
static int age=10;
  //Khai bao ham khoi tao mac dinh
  Book(this._name, this.gia, this.namXB);

  // ham khoi tao co ten
  Book.bookNew(String name)
  {
    this._name = name;
    gia=5000;
  }
  // Book({ required this.name, required this.gia, required this.namXB});

// ham Getter de lay ra GT cua thuoc tinh name
  String get GetName =>_name;

  // ham setter de sua GT cua thuoc tinh name
set SetName(String name)
{
  _name=name;
}

void showHello() {
  print('Xin chao ban toi moi hoc dart!');
}
}
 */

class book{
 String name;
 int year;

 book({ required this.name, required  this.year});

 void ReadBook()
 {
   print('Toi dang doc sach lap trinh android');
 }

}

class BookFunny extends book{
String? type;

BookFunny(String name, int year, {this.type='truyen vui'}) :super(name: name, year: year);

void ReadBookFunny()
{
  print('Toi dang doc truyen rua va tho');
}


}










