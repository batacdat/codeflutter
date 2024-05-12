/// Khoi tao mot danh sach sinh vien
/// String vien bao gom cac thuoc tinh nhuw sau: Ma sv, ten,
/// tuoi, Danh sach diem (3 diem)
/// tinh diem trung binh va tim sinh vien co diem trung binh cao nhat in ra consolve
void main(){
  Student st1 = Student(id: "sv01", name: "Nguyen Van A", ngaySinh:" 20/10/2004", pointList: [8,7,6]);
  Student st2 = Student(id: "sv02", name: "Nguyen Van B",ngaySinh:" 28/11/2007", pointList: [4,5,10]);
  Student st3 = Student(id: "sv03", name: "Tran Thi C",ngaySinh:" 20/1/2000", pointList: [1,1,10]);

  List<Student> listSdt = [];
  listSdt.add(st1);
  listSdt.add(st2);
  listSdt.add(st3);

  double max = 0.0;
  String name = "";
  String id = "";
String ngaySinh="";

  for(int i = 0; i < listSdt.length ; i ++){
    if(max < listSdt[i].tb()){
      max = listSdt[i].tb();
      name = listSdt[i].name ?? "";
      id = listSdt[i].id ?? "";
      ngaySinh=listSdt[i].ngaySinh??"";
    }
  }
  print(name);
  print(id)
  ; // 0002 -> in ra ten
  var a = listSdt.where((item) => item.id == id);
  print(a.first.name);
}

class Student{
  String? id;
  String? name;
  String? ngaySinh;
  List<int>? pointList;

  Student({this.id, this.name, this.ngaySinh, this.pointList});

  double tb(){
    if(pointList == null) return 0;

    double sum = 0;
    for(int i=0 ; i < this.pointList!.length; i++){
      sum += this.pointList![i];
    }

   return sum;
  }
}