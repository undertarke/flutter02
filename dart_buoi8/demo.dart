// lớp đối tượng ConNguoi: id, hoten, email, phone,....

// biến
import 'dart:io';

var id = 0;
var hoTen;
var email;
var phone;

// hàm (function)
void ham() {}

dynamic hamNuaNe() {}

// từ khóa dẫn xuất: private, public, protected
class ConNguoi {
  // thuộc tính
  var _id;
  var hoTen;
  var email;
  var phone;

  // hàm khởi tạo => thêm dữ liệu cho thuộc tính của đối tượng
  ConNguoi(this._id, this.hoTen, this.email, this.phone);

  // phương thức
  void ham(a, b, c) {
    // định nghĩa lệnh xử lý
  }

  dynamic hamNuaNe() {
    this._id;
    this.ham(1, 2, 3);
  }
}

void main(List<String> args) {
  // đối tượng
  var conNguoi1 = ConNguoi(0, "tony", "tony@gmail.com", "911");
  conNguoi1._id;
  conNguoi1.hoTen;
  conNguoi1.email;
  conNguoi1.phone;
  conNguoi1.ham(1, 2, 3);
  conNguoi1.hamNuaNe();

  //   print(conNguoi1.hoTen);

  // đối tượng
  var conNguoi = {
    "id": 0,
    "hoTen": "tony",
    "email": "tony@gmail",
    "phone": "911",
  };

  conNguoi["id"];
  conNguoi["hoTen"];
  conNguoi["email"];

  //   var ketQua = conNguoi["dayLaHam"] as Function ; // Truy xuất và gọi hàm
  //   print(ketQua()); // Output: không biết ghi gì

  // bài 1: Sinh viên: thêm mới, hiện thị danh sách, tìm kiếm id
  var dungCT = "1";

  while (dungCT != "0") {
    print("1: Thêm mới");
    print("2: Hiển thị danh sách");
    print("3: Tìm kiếm theo id");
    print("0: Thoát chương trình");

    dungCT = stdin.readLineSync().toString();

    // xử lý logic
  }

  
}

