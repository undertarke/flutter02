void main() {
  // 10 học sinh => 10 , 10 , 10, 10

  //   vị trí => bắt đầu bằng 0
  // var listChuoi = ["a","b","hello","123","bbb"]; // danh sách lưu chữ => array string
  // var listObject= [{},{},{},{}]; // danh sách đối tượng => array object

  //   index      0   1   2   3   4   5   6   7   8  9
  var listDiem = [
    1,
    90,
    80,
    70,
    60,
    50,
    40,
    30,
    20,
    10,
  ]; // danh sách lưu số => array number

  // print(listDiem[6]);

  // thêm dữ liệu vào mảng
  listDiem.add(101); // [1, 90, 80, 70, 60, 50, 40, 30, 20, 10, 101]

  listDiem.remove(101); // xóa bằng data

  // listDiem.removeAt(10); // xóa bằng index

  // listDiem[0] = 102;

  var setDemo = {1, 90, 80, 70, 60, 1, 50, 40, 101, 30, 20, 10, 101};
  // print(setDemo);

  // object = json
  // người dùng: họ tên, email, tuổi
  var user = {
    "id": 1, // key bắt buộc luôn luôn khai báo
    "name": "Tony Starr",
    "email": "tony@gmail.com",
    "age": 100,
  };

  // truy xuất data
  user["age"] = 99;
  // print(user["age"]);

  //danh sách đối tượng
  // dự liệu id không được trùng
  var listUser = [
    {"id": 1, "name": "Tony Starr", "email": "tony@gmail.com", "age": 100},
    {"id": 2, "name": "Tony Starr 1", "email": "tony@gmail.com", "age": 100},
    {"id": 3, "name": "Tony Starr 2", "email": "tony@gmail.com", "age": 100},
    {"id": 4, "name": "Tony Starr 3", "email": "tony@gmail.com", "age": 100},
    {"id": 5, "name": "Tony Starr 4", "email": "tony@gmail.com", "age": 100},
    {"id": 6, "name": "Tony Starr 5", "email": "tony@gmail.com", "age": 100},
    {"id": 7, "name": "Tony Starr 6", "email": "tony@gmail.com", "age": 100},
    {"id": 8, "name": "Tony Starr 7", "email": "tony@gmail.com", "age": 100},
  ];

  // print(listUser[3]["name"]);

  String? name = null;

  // two thousand later year......

  // lặp đi lặp lại nhiều lần
  // vòng lặp for , for in
  var listNumber = [53, 2, 7, 88, 20, 12, 467, 2325, 942];

  // vòng lặp for
  // vị trí 1: khai bao biến lặp
  // vị trí 2: câu điều kiện (ko có if) dừng lặp => còn đúng còn lặp => cho nó đúng quài là lặp quài (infinity war)
  // vị trí 3: lệnh sẽ làm sau mỗi lần lặp

  for (var index = 0; index <= listNumber.length - 1; index++) {
    continue;
    // làm trong đây nhé
    // print("đây là for thường: ${listNumber[index]}");
  }

  // for in
  for (var item in listNumber) {
    // break  dừng vòng lặp

    if (item == 12) {
      continue;
    }
    // print("đây là for in: $item ");
  }

  var index = 0;
  do {
    // print("do while: $index");
  } while (index < 0);

  var index2 = 0;
  while (index2 < 0) {
    // print("while $index2");
  }

  // bài 1: n= 45 => 1 + 2 + 3 + 4 + 5+ ..... + 45 = ????
  const N = 45;
  var tong = 0;
  for (var number = 0; number < N; number++) {
    tong += number;
  }

  print(tong);

  var demo = "1234";
  
  // 9 => 1 2 3 4 5 6 7 8 9
}
