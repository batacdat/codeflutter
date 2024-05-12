import 'dart:io';

import 'diachi.dart';
import 'diem.dart';
import 'sinhvien.dart';
// Định nghĩa lớp Sinh viên hệ đại học từ xa
class svtuxa extends sinhvien {
  String highSchoolName;
  int highSchoolGraduationYear;
  String highSchoolGraduationRank;

  svtuxa(
      String ma,
      String ten,
      diachi address,
      String sonha,
     diem gpa,
      this.highSchoolName,
      this.highSchoolGraduationYear,
      this.highSchoolGraduationRank)
      : super(ma, ten, address, sonha, gpa);
}









