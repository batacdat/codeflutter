import 'dart:io';

import 'diachi.dart';
import 'diem.dart';
import 'sinhvien.dart';

// Định nghĩa lớp Sinh viên hệ chất lượng cao
class svchatluongcao extends sinhvien {
  double entranceExamScore;
  String englishCertificateName;
  String englishCertificateValidity;
  String englishCertificateRank;

  svchatluongcao(
      String ma,
      String ten,
      diachi address,
      String sonha,
      diem gpa,
      this.entranceExamScore,
      this.englishCertificateName,
      this.englishCertificateValidity,
      this.englishCertificateRank)
      : super(ma, ten, address, sonha, gpa);
}













