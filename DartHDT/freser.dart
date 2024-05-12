import 'dart:io';

import 'employee.dart';

class Freser extends Employee{
  int?graduationDate;
  String?graduationRank;
  String?education;

  Freser(super.id, super.name, super.birthDay, super.phone, super.email, super.employerType, super.employerCount,this.graduationDate, this.graduationRank, this.education);
@override
  void nhapThongTin()
  {
    super.nhapThongTin();
    print('Nhap  nam tot nghiep:');
    graduationDate=int.parse(stdin.readLineSync()!);
    print('Nhap rank cua ban:');
   graduationRank=stdin.readLineSync()!;
   print('Nhap truong cua ban:');
   education=stdin.readLineSync()!;
  }

  @override
  void Showme() {
    super.ShowInfo();
    print("graduationDate:$graduationDate");
    print("graduationDate:$graduationRank");
    print("graduationDate:$education");
  }


}
