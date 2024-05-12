import 'dart:io';

import 'diachi.dart';
import 'diem.dart';
import 'sinhvien.dart';
import 'svchatluongcao.dart';
import 'svchinhquy.dart';
import 'svtuxa.dart';


// Hàm để nhập thông tin của một sinh viên từ bàn phím
  sinhvien nhapTT() {
    print('Nhập thông tin sinh viên:');
    stdout.write('Mã sinh viên: ');
    String ma = stdin.readLineSync()!;
    stdout.write('Tên sinh viên: ');
    String ten = stdin.readLineSync()!;
    stdout.write('Địa chỉ - Tên đường: ');
    String duong = stdin.readLineSync()!;
    stdout.write('Địa chỉ - Tên phường: ');
    String phuong = stdin.readLineSync()!;
    stdout.write('Địa chỉ - Tên quận: ');
    String quan = stdin.readLineSync()!;
    stdout.write('Địa chỉ - Tên thành phố: ');
    String thanhpho = stdin.readLineSync()!;
    stdout.write('Địa chỉ - Số nhà: ');
    String sonha = stdin.readLineSync()!;
    diachi address = diachi(duong, phuong, quan, thanhpho, sonha);
    stdout.write('Số điện thoại: ');
    String sdt = stdin.readLineSync()!;
    stdout.write('Điểm GPA: ');
    double gpaValue = double.parse(stdin.readLineSync()!);

    print(
        'Chọn loại sinh viên (1 - Hệ chất lượng cao, 2 - Hệ chính quy, 3 - Hệ đại học từ xa):');
    int type = int.parse(stdin.readLineSync()!);

    switch (type) {
      case 1:
        stdout.write('Điểm thi đầu vào: ');
        double entranceExamScore = double.parse(stdin.readLineSync()!);
        stdout.write('Tên chứng chỉ Tiếng Anh: ');
        String englishCertificateName = stdin.readLineSync()!;
        stdout.write('Thời hạn chứng chỉ Tiếng Anh: ');
        String englishCertificateValidity = stdin.readLineSync()!;
        stdout.write('Xếp loại chứng chỉ Tiếng Anh: ');
        String englishCertificateRank = stdin.readLineSync()!;
        return svchatluongcao(
            ma,
            ten,
            address,
            sdt,
            diem(gpaValue),
            entranceExamScore,
            englishCertificateName,
            englishCertificateValidity,
            englishCertificateRank);
      case 2:
        stdout.write('Điểm thi đầu vào: ');
        double entranceExamScore = double.parse(stdin.readLineSync()!);
        return svchinhquy(
            ma, ten, address, sdt, diem(gpaValue), entranceExamScore);
      case 3:
        stdout.write('Tên trường THPT: ');
        String highSchoolName = stdin.readLineSync()!;
        stdout.write('Năm tốt nghiệp THPT: ');
        int highSchoolGraduationYear = int.parse(stdin.readLineSync()!);
        stdout.write('Xếp loại tốt nghiệp THPT: ');
        String highSchoolGraduationRank = stdin.readLineSync()!;
        return svtuxa(
            ma, ten, address, sdt,
            diem(gpaValue),
            highSchoolName,
            highSchoolGraduationYear,
            highSchoolGraduationRank);
      default:
        throw ArgumentError('Loại sinh viên không hợp lệ.');
    }
  }
// ham nhap ds sinh vien
void nhapDS(){
  List<sinhvien> students = [];

  // Nhập danh sách sinh viên
  print('Nhập số lượng sinh viên:');
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    students.add(nhapTT());
  }

}
// Hàm để hiển thị danh sách sinh viên
  void hienDS(List<sinhvien> students) {
    print('Danh sách sinh viên:');
    for (var student in students) {
      print('Mã sinh viên: ${student.ma}');
      print('Tên sinh viên: ${student.ten}');
      print('Địa chỉ: ${student.address.duong}, ${student.address
          .phuong}, ${student.address.quan}, ${student.address.thanhpho}');
      print('Số điện thoại: ${student.sdt}');
      print('Điểm GPA: ${student.gpa.value}');
      if (student is svchatluongcao) {
        print('Điểm thi đầu vào: ${student.entranceExamScore}');
        print('Chứng chỉ Tiếng Anh: ${student.englishCertificateName}');
        print('Thời hạn: ${student.englishCertificateValidity}');
        print('Xếp loại: ${student.englishCertificateRank}');
      } else if (student is svchinhquy) {
        print('Điểm thi đầu vào: ${student.entranceExamScore}');
      } else if (student is svtuxa) {
        print('Trường THPT: ${student.highSchoolName}');
        print('Năm tốt nghiệp:${student.highSchoolGraduationRank}');
      }
    }
  }

  // ham them sinh vien vao danh sach

void themSV(List<sinhvien> students)
{
  students.add(nhapTT());
}



  // Hàm để xoá sinh viên dựa trên mã sinh viên
  void xoaSV(List<sinhvien> students) {

    stdout.write('Nhập mã sinh viên cần xoá: ');
    String ID= stdin.readLineSync()!;

    for (int i = 0; i < students.length; i++) {
      if (students[i].ma == ID) {
        students.removeAt(i);
        print('Đã xoá sinh viên có mã $ID thành công.');
        return;
      }
    }
    print('Không tìm thấy sinh viên có mã $ID để xoá.');
  }

// Hàm để sửa thông tin của một sinh viên dựa trên mã sinh viên
void suaSV(List<sinhvien> students, ) {
  // Sửa thông tin sinh viên
  stdout.write('Nhập mã sinh viên cần sửa thông tin: ');
  String suaID = stdin.readLineSync()!;


  for (int i = 0; i < students.length; i++) {
    if (students[i].ma == suaID) {
      students[i] = nhapTT();
      print('Đã sửa thông tin sinh viên có mã $suaID thành công.');
      return;
    }
  }
  print('Không tìm thấy sinh viên có mã $suaID để sửa thông tin.');
}

// Hàm để tìm danh sách sinh viên chất lượng cao có điểm đầu vào tiếng Anh lớn hơn 8.0
List<svchatluongcao> timSVCLCTALonHon8(List<sinhvien> students) {
  List<svchatluongcao> danhsachSVCLCTALonHon8 = [];
  for (var student in students) {
    if (student is svchatluongcao && student.entranceExamScore > 8.0) {
      danhsachSVCLCTALonHon8.add(student);
    }
  }
  return danhsachSVCLCTALonHon8;


}


void showmenu()
{
  print('---------MENU---------');
 // print('1.Nhap danh sach sinh vien.');
  print('1.Thêm sinh viên mới vào danh sách.');
  print('2.Hiển thị danh sách  sinh viên trong hệ thống.');
  print('3.Xoá sinh viên bất kì theo mã sinh viên.');
  print('4.Sửa thông tin 1 sinh viên theo mã sinh viên ');
  print('5.Tìm danh sách sinh viên chất lượng cao có điểm đầu vào tiếng anh lớn hơn 8.0.');
  print('0.Thoát chương trình!');
  print('Nhập lựa chọn của bạn:');
  }












void main() {
  List<sinhvien> students = [];
 
  var luachon;
  do {
    showmenu();
    int luachon = int.parse(stdin.readLineSync()!);
    switch (luachon) {
      /*case 1:
        {
         nhapDS();
          break;
        }*/
      case 1:
        {
          themSV(students);

          break;
        }
      case 2:
        {
          hienDS(students);
          break;
        }
      case 3:
        {
          xoaSV(students,);
          hienDS(students);
          break;
        }
      case 4:
        {
          suaSV(students);
          hienDS(students);
        }
      case 5:
        {
          List<svchatluongcao> danhsachSVCLCLonHon8 = timSVCLCTALonHon8(students);
          print('Danh sách sinh viên chất lượng cao có điểm đầu vào tiếng Anh lớn hơn 8.0:');
          hienDS(danhsachSVCLCLonHon8);

        }
    }

  }
 while(luachon!=0);


 
}





