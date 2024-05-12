/// Khoi tao mot danh sach sinh vien
/// String vien bao gom cac thuoc tinh nhuw sau: Ma sv, ten,
/// tuoi, Danh sach diem (3 diem)
/// tinh diem trung binh va tim sinh vien co diem trung binh cao nhat in ra consolve
void main(){
  Student st1 = Student(id: "0001", name: "A", age: 18, pointList: [1,2,3]);
  Student st2 = Student(id: "0002", name: "B", age: 18, pointList: [4,2,10]);
  Student st3 = Student(id: "0003", name: "C", age: 18, pointList: [1,1,10]);

  List<Student> listSdt = [];
  listSdt.add(st1);
  listSdt.add(st2);
  listSdt.add(st3);

  double max = 0.0;
  String name = "";
  String id = "";

  for(int i = 0; i < listSdt.length ; i ++){
    if(max < listSdt[i].tb()){
      max = listSdt[i].tb();
      name = listSdt[i].name ?? "";
      id = listSdt[i].id ?? "";
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
  int? age;
  List<int>? pointList;

  Student({this.id, this.name, this.age, this.pointList});

  double tb(){
    if(pointList == null) return 0;

    num sum = 0;
    for(int i=0 ; i < this.pointList!.length; i++){
      sum += this.pointList![i];
    }

    return sum / this.pointList!.length;
  }
}