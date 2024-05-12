/*
viết 1 chươg trình dart với yêu cau như sau:
Sv(id, name,class, dtb)
1. Nhap ds sinh vien
2. Hien ds sinh vien ra man hinh
3. Tim sv co diem tb cao nhat
 */


/*
import'dart:io';
 import'dart:convert';

 class Sinhvien{
  String maSV;
  String hoTen;

  double diemTB;

  Sinhvien({this.maSV, this.hoTen, this.diemTB});

  void inThongTinSV()
  {
   print('Ma sinh vien:$maSV');
print('Ho ten cua sinh vien$hoTen');

print('Diem TB:$diemTB');

  }

}




void  main(){
List<Sinhvien> listSV = [];
print('Nhap so luong sinh vien: ');
int n=int.parse(stdin.readLineSync()!);

for(int i=0;i<n;i++)
{
 print('Nhap thong tin cho sinh vien thu ${i+1}:');
 print('Ma sinh vien:');
 String id=stdin.readLineSync()!;

 print('Ho va ten:');
 String name=stdin.readLineSync()!;



 print('Diem trung binh:');
 double diemTB= double.parse(stdin.readLineSync()!);

 Sinhvien sv = Sinhvien(maSV, hoTen, diemTB);
 listSV.add(sv);

}
}
*/
import 'dart:io';
/*class SinhVien {
 String hoTen;
 int namSinh;

 SinhVien(this.hoTen, this.namSinh);

 void hienThiThongTin() {
  print('Họ và tên: $hoTen');
  print('Năm sinh: $namSinh');
 }
}*/

void main() {
/* List<SinhVien> danhSachSinhVien = [];

 // Nhập thông tin sinh viên
 int soLuongSinhVien;
 print('Nhập số lượng sinh viên: ');
 soLuongSinhVien = int.parse(stdin.readLineSync()!);

 for (int i = 0; i < soLuongSinhVien; i++) {
  print('\nNhập thông tin cho sinh viên thứ ${i + 1}:');
  print('Họ và tên: ');
  String hoTen = stdin.readLineSync()!;
  print('Năm sinh: ');
  int namSinh = int.parse(stdin.readLineSync()!);

  SinhVien sinhVien = SinhVien(hoTen, namSinh);
  danhSachSinhVien.add(sinhVien);
 }

 // Hiển thị thông tin của danh sách sinh viên
 print('\nDanh sách sinh viên:');
 for (int i = 0; i < danhSachSinhVien.length; i++) {
  print('\nThông tin sinh viên thứ ${i + 1}:');
  danhSachSinhVien[i].hienThiThongTin();
 }
 */
}




