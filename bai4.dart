import 'dart:io';
import 'dart:convert';
String normalizeEmail(String name) {
  String email = name.trim().toLowerCase().replaceAll(' ', ''); // Chuẩn hóa họ tên và thay dấu cách bằng dấu chấm
  String email2 = name.trim().toLowerCase().replaceAll(' ', '');
  return '$email@gmail.com'; // Thêm domain email phù hợp
}

void main() {
  String name = 'Nguyen Van A';
  String name2= 'Nguyen Van Mui';
  String email = normalizeEmail(name);
  String emai2=normalizeEmail(name2);
  print('Địa chỉ email chuẩn hóa: $email');
  print('Địa chỉ email chuẩn hóa: $emai2');
}







