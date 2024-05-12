import 'employee.dart';

class Intern extends Employee{
  String?major;
  int?semester;
  String?university_name;

  Intern(super.id, super.name, super.birthDay, super.phone, super.email, super.employerType, super.employerCount,this.major, this.semester, this.university_name);

  @override
  void Showme() {
    super.ShowInfo();




  }


}
