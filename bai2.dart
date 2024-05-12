
import 'dart:io';
import 'dart:convert';


void main()
{
  double tienHoaHong=0;
  print('Nhập doanh thu bán hàng:');
  double doanhThuBanHang= double.parse(stdin.readLineSync()!);
  if(doanhThuBanHang<=100)
{
  tienHoaHong=doanhThuBanHang*0.05;
}
else
  if(doanhThuBanHang<=300)
    {
      tienHoaHong=doanhThuBanHang*0.1;
    }
else
  if( doanhThuBanHang>300)
{
  tienHoaHong=doanhThuBanHang*0.2;
}
print('Tiền hoa hồng đại lý bạn được nhận là: $tienHoaHong  triệu ');






}





