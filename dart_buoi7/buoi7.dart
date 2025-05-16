void main() {
  var numberA = 2;
  var numberB = 4;

  tinhTong(numberA, numberB);

  tinhHieu(6, 10);

  var tong = tinhHieu(2, 6);
  print(tong);

  // .... coding...

  var tongB = tinhHieu(8, 1);
  print(tongB);

  // .... coding....

  var tongC = tinhHieu(94, 100);
  print(tongC);
}

// cách 1: không có trả về giá trị (ko có return)
void tinhTong(var soA, var soB) {
  var tong = soA + soB;

  print(tong);
}

// cách 2:  có trả về giá trị (return)
int tinhHieu(int numA, int numB) {
  var tong = 0;

  if (numA < numB) {
    tong = numB - numA;
  } else {
    tong = numA - numB;
  }

  return tong;
}

Future<int> tinhTongHai(var soA, var soB) async {
  var tong = await tinhHieu(3, 5);
  return soA + soB;
}

Future<int> tinhTongBa(int soA, int soB) async => soA + soB;
