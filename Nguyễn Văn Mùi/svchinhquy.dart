// Định nghĩa lớp Sinh viên hệ chính quy
import 'dart:io';
import 'diachi.dart';
import 'diem.dart';
import 'sinhvien.dart';

class svchinhquy extends sinhvien {
  double entranceExamScore;

  svchinhquy(String ma, String ten, diachi address, String sonha, diem gpa, this.entranceExamScore)
      : super(ma, ten, address, sonha, gpa);
}
