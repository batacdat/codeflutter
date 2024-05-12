
/*Viết chương trình quản lý sinh viên (mã sinh viên - bắt buộc, tên sinh viên - bắt buộc, địa chỉ, số điện thoại liên hệ), điểm gpa hiện tại - bắt buộc
Trong đó địa chỉ củ học sinh bao gồm tên phường, tên quận, tên thành phố, tên đường, số nhà (nếu có)
Loại đào tạo được chia thành 3 loại chính: hệ đào tạo từ xa, hệ chính quy và hệ chất lượng cao.
Hệ chất lượng cao quản lý thêm điểm đầu vào của sinh viên và chứng chỉ tiếng anh (chứng chỉ bao gồm: tên chứng chỉ, thời hạn, xếp loại)
Hệ chính qui quản lý thêm điểm đầu vào của sinh viên
Hệ đại học từ xa quản lý bằng tốt nghiệp cấp 3 (bằng bao gồm: tên trường, năm tốt nghiệm, xếp loại)
Thiết kế triển khai đối tượng trên bằng ngôn ngữ lập trình dart - sử dụng OOP Viết chương trình quản lý bao gồm:
a. HIển thị danh sách toàn bộ sinh viên trong hệ thống
b. Thêm sinh viên mới vào danh sách
c. Xoá sinh viên bất kì theo mã sinh viên
d. Sửa thông tin 1 sinh viên theo mã sinh viên
e. Tìm danh sách sinh viên theo kiểu đào tạo (từ xa, chính quy, chất lượng cao)*/

import 'dart:io';

import 'diachi.dart';
import 'diem.dart';


// Class SinhVien
// Định nghĩa lớp Sinh viên
class sinhvien {
  String ma;
  String ten;
  diachi address;
  String sdt;
  diem gpa;

  sinhvien(this.ma, this.ten, this.address, this.sdt, this.gpa);
}














