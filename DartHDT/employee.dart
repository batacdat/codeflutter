import 'dart:io';

abstract  class Employee{
  int?id;
  String?name;
  String?birthDay;
  String ?phone;
  String? email;
  int ?employerType;
  int?employerCount;
  Employee(this.id, this.name, this.birthDay, this.phone, this.email,this.employerType,this.employerCount);

  void  nhapThongTin()
  {
    print('Nhap id nhan vien:');
    id=int.parse(stdin.readLineSync()!);
    print('Nhap ho ten:');
    name=stdin.readLineSync()!;
   print('Nhap ngay sinh:');
   birthDay=stdin.readLineSync()!;
    print('Nhap so dien thoai:');
    phone=stdin.readLineSync()!;
    print('Nhap email ca nhan:');
    email=stdin.readLineSync()!;




  }






  void ShowInfo()
  {
    print("ID employee:$id");
    print("Name employee:$name");
    print("BirthDay employee:$birthDay");
    print("Phone employee:$phone");
    print("Email employee:$email");
  }
  void Showme();




}