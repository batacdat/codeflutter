import 'dart:io';

import 'employee.dart';

class Experience extends Employee{
  int? explnYear;
  String?proSkill;

  Experience(super.id, super.name, super.birthDay, super.phone, super.email, super.employerType, super.employerCount,this.explnYear, this.proSkill);
  @override
  @override
  void nhapThongTin()
  {
    super.nhapThongTin();
    print('Nhap so nam kinh nghiem:');
    explnYear=int.parse(stdin.readLineSync()!);
    print('Nhap ky nang cua ban:');
    proSkill=stdin.readLineSync()!;
  }
  void Showme()
  {
    super.ShowInfo();
    print("So nam kinh nghiem:$explnYear");
    print("Ky nang:$proSkill");

  }




}