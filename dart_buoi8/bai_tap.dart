import 'dart:io';

void main() {
  var listSinhVien = [];

  var dungCT = "1";

  while (dungCT != "0") {
    print("1: Thêm mới");
    print("2: Hiển thị danh sách");
    print("3: Tìm kiếm theo id");
    print("0: Thoát chương trình");

    dungCT = stdin.readLineSync().toString();

    switch (dungCT) {
      case "1":
        var sinhVien = Student();

        print("Nhập mã id: ");
        var id = stdin.readLineSync().toString();
        print("Nhập họ tên: ");
        var hoTen = stdin.readLineSync().toString();

        print("Nhập tuổi: ");
        var tuoi = stdin.readLineSync().toString();

        print("Nhập điểm: ");
        var diem = stdin.readLineSync().toString();

        sinhVien.nhapThongTin(id, hoTen, tuoi, diem);

        listSinhVien.add(sinhVien);

        break;
      case "2":
        for (var sinhVien in listSinhVien) {
          print(
            "Mã: ${sinhVien.id},họ tên: ${sinhVien.name} ,tuổi: ${sinhVien.age} , điểm: ${sinhVien.grade}",
          );
        }

        break;
      case "3":
        print("Nhập id để tìm: ");
        var id = stdin.readLineSync().toString();
        var timThay = false;
        for (var sinhVien in listSinhVien) {
          if (sinhVien.id == id) {
            print(
              "Mã: ${sinhVien.id},họ tên: ${sinhVien.name} ,tuổi: ${sinhVien.age} , điểm: ${sinhVien.grade}",
            );
            timThay = true;
            break;
          }
        }
        if (timThay == false) {
          print("Không tìm thấy");
        }
        break;

      case "4":
        var id = stdin.readLineSync().toString();
        Student sinhVien = listSinhVien.firstWhere((item) => item.id == id);
        print(sinhVien);

        print(
          "Mã: ${sinhVien.id},họ tên: ${sinhVien.name} ,tuổi: ${sinhVien.age} , điểm: ${sinhVien.grade}",
        );

        break;
    }
    print("demo");
    // xử lý logic
  }
}

// bài tập 1

class Student {
  var id;
  var name;
  var age;
  var grade;

  void nhapThongTin(id, name, age, grade) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.grade = id;
  }

  dynamic hienThiThongtin() {
    return {
      "Mã": this.id,
      "Họ tên": this.name,
      "Tuổi": this.age,
      "Điểm": this.grade,
    };
  }
}
