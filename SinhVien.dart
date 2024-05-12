import 'dart:io';

class SinhVien {
  String maSinhVien;
  String hoTen;
  DateTime ngaySinh;
  int namVaoHoc;
  double diemDauVao;
  List<KetQuaHocTap> ketQuaHocTap;

  SinhVien(this.maSinhVien, this.hoTen, this.ngaySinh, this.namVaoHoc, this.diemDauVao, this.ketQuaHocTap);

  void NhapTTSV()
  {





  }



  void HienTTSV()
  {
    print('Ma SV:$maSinhVien');
    print('Ho va ten:$hoTen');
    print('Ngay sinh:$ngaySinh');
    print('Nam vao hoc:$namVaoHoc');
    print('Diem dau vao:$diemDauVao');
    print('Ket qua hoc tap:$ketQuaHocTap');

  }




}

class SinhVienChinhQuy extends SinhVien {
  SinhVienChinhQuy(String maSinhVien, String hoTen, DateTime ngaySinh, int namVaoHoc, double diemDauVao, List<KetQuaHocTap> ketQuaHocTap)
      : super(maSinhVien, hoTen, ngaySinh, namVaoHoc, diemDauVao, ketQuaHocTap);

  void HienTTSV(){
    super.HienTTSV();

  }
}

class SinhVienTaiChuc extends SinhVien {
  String noiLienKetDaoTao;

  SinhVienTaiChuc(String maSinhVien, String hoTen, DateTime ngaySinh, int namVaoHoc, double diemDauVao, List<KetQuaHocTap> ketQuaHocTap, this.noiLienKetDaoTao)
      : super(maSinhVien, hoTen, ngaySinh, namVaoHoc, diemDauVao, ketQuaHocTap);
  void HienTTSV(){
    super.HienTTSV();
print('Noi lien ket dao tao:$noiLienKetDaoTao');
  }
}

class Khoa {
  String tenKhoa;
  List<SinhVien> danhSachSinhVien;

  Khoa(this.tenKhoa, this.danhSachSinhVien);
}

class KetQuaHocTap {
  String tenHocKy;
  double diemTrungBinhHocKy;

  KetQuaHocTap(this.tenHocKy, this.diemTrungBinhHocKy);
}

class QuanLy {
  void nhapTT() {
    List<SinhVien> danhSachSinhVien = [];
    print('Nhập số lượng sinh viên: ');
    int soLuongSV = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < soLuongSV; i++) {
      print('\nNhập thông tin cho sinh viên thứ ${i + 1}:');
    }
  }


}
